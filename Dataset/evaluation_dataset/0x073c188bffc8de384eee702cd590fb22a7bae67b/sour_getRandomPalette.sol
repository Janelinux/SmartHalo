    function getRandomPalette(uint256 _seed) 
    view public
    returns (
      string[8] memory paletteRGB,
      uint32 paletteId,
      uint256 seed
    )
    {
      seed = prng(_seed);
      paletteId = randUInt32(seed, 0, PALETTE_COUNT);

      for(uint8 i = 0; i < 5; i++) {
        paletteRGB[i] = hexToRgb(palettes[paletteId][i]);
      }

      paletteRGB[5] = hexToRgb(0x222222); // add blackish
      paletteRGB[6] = hexToRgb(0xffffff); // add white

      seed = prng(seed);
      paletteRGB[7] = hexToRgb([0xff0000, 0xffff00][randUInt32(seed, 0, 2)]); // add red or yellow

      string memory temp;
      // limit to 6 in order to avoid too many white/red/yellow backgrounds
      for (uint8 i = 0; i < 6; i++) {
        seed = prng(seed);
        uint32 n = randUInt32(seed, i, 6);
        temp = paletteRGB[n];
        paletteRGB[n] = paletteRGB[i];
        paletteRGB[i] = temp;
      }
    }
