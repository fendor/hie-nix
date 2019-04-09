{ mkDerivation, base, binary, bytestring, cabal-helper, cabal-plan
, containers, deepseq, directory, djinn-ghc, extra, fclabels
, filepath, fingertree, ghc, ghc-boot, ghc-paths, ghc-syb-utils
, haskell-src-exts, hlint, monad-control, monad-journal, mtl
, old-time, optparse-applicative, pipes, process, safe, semigroups
, split, stdenv, syb, template-haskell, temporary, text, time
, transformers, transformers-base
}:
mkDerivation {
  pname = "ghc-mod-core";
  version = "5.9.0.0";
  src = ./.;
  libraryHaskellDepends = [
    base binary bytestring cabal-helper cabal-plan containers deepseq
    directory djinn-ghc extra fclabels filepath fingertree ghc ghc-boot
    ghc-paths ghc-syb-utils haskell-src-exts hlint monad-control
    monad-journal mtl old-time optparse-applicative pipes process safe
    semigroups split syb template-haskell temporary text time
    transformers transformers-base
  ];
  homepage = "https://github.com/DanielG/ghc-mod";
  description = "Happy Haskell Hacking";
  license = stdenv.lib.licenses.agpl3;
}
