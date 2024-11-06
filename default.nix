with (import <nixpkgs> {});
rec {
  reactcv = mkYarnPackage {
    name = "reactcv";
    src = ./.;
    packageJSON = ./package.json;
    yarnLock = ./yarn.lock;
    yarnNix = ./yarn.nix;
  };
}
