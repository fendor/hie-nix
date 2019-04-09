{ mkDerivation, aeson, apply-refact, async, base, blaze-markup
, brittany, bytestring, Cabal, cabal-helper, containers
, data-default, Diff, directory, fetchgit, filepath, floskell
, fold-debounce, free, ghc, ghc-exactprint, ghc-mod, ghc-mod-core
, gitrev, haddock-api, haddock-library, HaRe, haskell-lsp
, haskell-lsp-types, haskell-src-exts, hie-plugin-api, hlint
, hoogle, hsimport, hslogger, hspec, hspec-core, hspec-discover
, lens, lsp-test, monad-control, monoid-subclasses, mtl
, optparse-simple, parsec, process, QuickCheck
, quickcheck-instances, safe, sorted-list, stdenv, stm, tagsoup
, text, transformers, unordered-containers, vector, yaml, yi-rope
}:
mkDerivation {
  pname = "haskell-ide-engine";
  version = "0.8.0.0";
  src = fetchgit {
    url = "https://github.com/haskell/haskell-ide-engine.git";
    sha256 = "1jcpamfhfg6113h71mfqv4x9f132f5bilaii99wfqmr62i0ga0q8";
    rev = "d96119645c12905858468a98429f6a887330e7d9";
    fetchSubmodules = true;
  };
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    aeson apply-refact async base blaze-markup brittany bytestring
    Cabal cabal-helper containers data-default Diff directory filepath
    floskell fold-debounce ghc ghc-exactprint ghc-mod ghc-mod-core
    gitrev haddock-api haddock-library HaRe haskell-lsp
    haskell-src-exts hie-plugin-api hlint hoogle hsimport hslogger
    hspec hspec-core lens monad-control monoid-subclasses mtl
    optparse-simple parsec process safe sorted-list stm tagsoup text
    transformers unordered-containers vector yaml yi-rope
  ];
  executableHaskellDepends = [
    base directory haskell-lsp hie-plugin-api hslogger ghc-mod-core
    optparse-simple process
  ];
  testHaskellDepends = [
    aeson base bytestring containers data-default directory filepath
    free ghc haskell-lsp-types hie-plugin-api hoogle hspec lens
    lsp-test process QuickCheck quickcheck-instances stm text
    unordered-containers
  ];
  testToolDepends = [ hspec-discover ];
  doHaddock = false;
  homepage = "http://github.com/githubuser/haskell-ide-engine#readme";
  description = "Provide a common engine to power any Haskell IDE";
  license = stdenv.lib.licenses.bsd3;
}
