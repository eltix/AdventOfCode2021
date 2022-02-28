let
  nixpkgsRev = "c53143dd09c2ce04b0a81d36a6b2126497157512"; /*v21.11*/
  nixpkgsSha256 = "1vbvdwpc3ac5qik9b8zx3jbvxwkda0xyai0lsmpfqix2cwgpma0n";

  nixpkgs = fetchTarball {
    url = "https://github.com/nixos/nixpkgs/archive/${nixpkgsRev}.tar.gz";
    sha256 = nixpkgsSha256;
  };

in
  with import nixpkgs {};
  mkShell {
    buildInputs = [ haskell.compiler.ghc921 cabal-install ];
  }
