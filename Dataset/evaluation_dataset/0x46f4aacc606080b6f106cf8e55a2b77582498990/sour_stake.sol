    function stake( uint _amount, address _recipient ) external returns ( bool ) {

        rebase();

        

        IERC20( SDA ).safeTransferFrom( msg.sender, address(this), _amount );



        Claim memory info = warmupInfo[ _recipient ];

        require( !info.lock, "Deposits for account are locked" );



        warmupInfo[ _recipient ] = Claim ({

            deposit: info.deposit.add( _amount ),

            gons: info.gons.add( IsSDA( sSDA ).gonsForBalance( _amount ) ),

            expiry: epoch.number.add( warmupPeriod ),

            lock: false

        });

        

        IERC20( sSDA ).safeTransfer( warmupContract, _amount );

        return true;

    }
