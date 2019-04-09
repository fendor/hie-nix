{ mkDerivation, base, stdenv, tasty, tasty-hunit }:
mkDerivation {
  pname = "constrained-dynamic";
  version = "0.1.0.0";
  src = ./.;
  libraryHaskellDepends = [ base ];
  testHaskellDepends = [ base tasty tasty-hunit ];
  description = "Dynamic typing with retained constraints";
  license = stdenv.lib.licenses.mit;
}
