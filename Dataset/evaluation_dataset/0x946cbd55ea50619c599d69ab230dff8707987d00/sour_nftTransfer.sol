  function nftTransfer(
    uint256 bitmapIndex, uint256 bit, address token, address from, address to, uint256 tokenId, uint256 expiryBlock
  )
    external
  {
    if (expiryBlock <= block.number) {
      revert Expired();
    }
    Bit.useBit(bitmapIndex, bit);
    TransferHelper.safeTransferFrom(token, from, to, tokenId);
  }
