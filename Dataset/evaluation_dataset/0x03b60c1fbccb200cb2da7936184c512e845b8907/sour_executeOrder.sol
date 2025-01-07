    function executeOrder(uint256 orderIndex) external {

        Order storage order = orders[orderIndex];

        require(orderIndex < orderCount, 'DXswapRelayer: INVALID_ORDER');

        require(!order.executed, 'DXswapRelayer: ORDER_EXECUTED');

        require(oracleCreator.isOracleFinalized(order.oracleId) , 'DXswapRelayer: OBSERVATION_RUNNING');

        require(block.timestamp <= order.deadline, 'DXswapRelayer: DEADLINE_REACHED');



        address tokenA = order.tokenA;

        address tokenB = order.tokenB;

        uint256 amountB;

        amountB = oracleCreator.consult(

          order.oracleId,

          tokenA == address(0) ? IDXswapRouter(dxSwapRouter).WETH() : tokenA,

          order.amountA 

        );

        uint256 amountA = oracleCreator.consult(order.oracleId, tokenB, order.amountB);

        

        /* Maximize token inputs */ 

        if(amountA <= order.amountA){

            amountB = order.amountB;

        } else {

            amountA = order.amountA;

        }

        uint256 minA = amountA.sub(amountA.mul(order.priceTolerance) / PARTS_PER_MILLION);

        uint256 minB = amountB.sub(amountB.mul(order.priceTolerance) / PARTS_PER_MILLION);



        order.executed = true;

        if(order.action == PROVISION){

            _pool(tokenA, tokenB, amountA, amountB, minA, minB);

        } else if (order.action == REMOVAL){

            address pair = _pair(tokenA, tokenB, dxSwapFactory);

            _unpool(

              tokenA, 

              tokenB, 

              pair, 

              order.liquidity,

              minA,

              minB

            );

        }

        emit ExecutedOrder(orderIndex);

    }
