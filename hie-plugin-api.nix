{ mkDerivation, aeson, base, constrained-dynamic, containers
, data-default, Diff, directory, filepath, fingertree, free, ghc
, ghc-mod-core, haskell-lsp, hslogger, monad-control, mtl, stdenv
, stm, syb, text, transformers, unix, unordered-containers, yi-rope
}:
mkDerivation {
  pname = "hie-plugin-api";
  version = "0.6.0.0";
  src = ./.;
  libraryHaskellDepends = [
    aeson base constrained-dynamic containers data-default Diff
    directory filepath fingertree free ghc ghc-mod-core haskell-lsp
    hslogger monad-control mtl stm syb text transformers unix
    unordered-containers yi-rope
  ];
  description = "Haskell IDE API for plugin communication";
  license = stdenv.lib.licenses.bsd3;
}
