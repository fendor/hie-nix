#!/usr/bin/env sh

set -xe

COMMIT=d96119645c12905858468a98429f6a887330e7d9
URL=https://github.com/haskell/haskell-ide-engine.git

cabal2nix --revision $COMMIT $URL > hie.nix
