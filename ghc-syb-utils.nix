{ mkDerivation, base, bytestring, ghc, stdenv, syb }:
mkDerivation {
  pname = "ghc-syb-utils";
  version = "0.2.3.3";
  src = ./ghc-syb/utils;
  libraryHaskellDepends = [ base bytestring ghc syb ];
  homepage = "https://github.com/DanielG/ghc-syb";
  description = "Scrap Your Boilerplate utilities for the GHC API";
  license = stdenv.lib.licenses.bsd3;
}
