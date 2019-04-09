{ mkDerivation, aeson, aeson-pretty, ansi-terminal, base
, bytestring, conduit, conduit-parse, containers, data-default
, Diff, directory, fetchgit, filepath, haskell-lsp, hspec, lens
, mtl, parser-combinators, process, stdenv, text, transformers
, unix, unordered-containers, yi-rope
}:
mkDerivation {
  pname = "lsp-test";
  version = "0.5.1.0";
  src = fetchgit {
    url = "https://github.com/bubba/lsp-test";
    sha256 = "1gvbzj41x64zpzywrdcbickqh5b4x9bfmsarbhdzxhlgsg77rwmh";
    rev = "e0220090747dd954341f6c17551f1200deab03b8";
    fetchSubmodules = true;
  };
  libraryHaskellDepends = [
    aeson aeson-pretty ansi-terminal base bytestring conduit
    conduit-parse containers data-default Diff directory filepath
    haskell-lsp lens mtl parser-combinators process text transformers
    unix unordered-containers yi-rope
  ];
  testHaskellDepends = [
    aeson base data-default haskell-lsp hspec lens text
    unordered-containers
  ];
  homepage = "https://github.com/Bubba/haskell-lsp-test#readme";
  description = "Functional test framework for LSP servers";
  license = stdenv.lib.licenses.bsd3;
}
