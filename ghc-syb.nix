{ mkDerivation, base, ghc, stdenv }:
mkDerivation {
  pname = "ghc-syb";
  version = "0.2.0.0";
  src = ./ghc-syb/instances;
  libraryHaskellDepends = [ base ghc ];
  homepage = "https://github.com/DanielG/ghc-syb";
  description = "Data and Typeable instances for the GHC API for GHC < 7.0";
  license = stdenv.lib.licenses.bsd3;
}
