{ pkgs ? (import <nixpkgs> { }) }:

let 
    brittany  = pkgs.haskell.packages.ghc864.callPackage ./brittany.nix {};
    floskell  = pkgs.haskell.packages.ghc864.callPackage ./floskell.nix {};
    lsp-test  = pkgs.haskell.packages.ghc864.callPackage ./lsp-test.nix {};
    ghc-syb = pkgs.haskell.packages.ghc864.callPackage ./ghc-syb.nix {};
    ghc-syb-utils = pkgs.haskell.packages.ghc864.callPackage ./ghc-syb-utils.nix {};
    cabal-helper = pkgs.haskell.packages.ghc864.callPackage ./cabal-helper.nix { };
    constrained-dynamic = pkgs.haskell.packages.ghc864.callPackage ./constrained-dynamic.nix { };
    ghc-mod-core = pkgs.haskell.packages.ghc864.callPackage ./ghc-mod-core.nix { cabal-helper = cabal-helper; ghc-syb-utils = ghc-syb-utils; };
    hie-plugin-api =  pkgs.haskell.packages.ghc864.callPackage ./hie-plugin-api.nix { constrained-dynamic = constrained-dynamic; ghc-mod-core = ghc-mod-core; };

    hie = pkgs.haskell.packages.ghc844.callPackage ./hie.nix   
                { brittany= brittany
                ; floskell = floskell
                ; lsp-test = lsp-test
                ; cabal-helper = cabal-helper
                ; ghc-mod-core = ghc-mod-core
                ; hie-plugin-api = hie-plugin-api
                ;  };
in
    hie