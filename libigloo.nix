# See: https://github.com/NixOS/nixpkgs/blob/d91f451ef05e45e39793248d2d29f857ad34b56d/pkgs/by-name/li/libigloo/package.nix
{
  fetchurl,
  rhash,
  stdenv,
}: let
  pname = "libigloo";
  version = "0.9.5";
  sha256 = "sha256-6iLpEZ96IYiBD5kQDFFVxnYtRZWuITuawp5ptPC4cok=";
in
  stdenv.mkDerivation {
    inherit pname version;

    src = fetchurl {
      inherit sha256;

      url = "http://downloads.xiph.org/releases/igloo/libigloo-${version}.tar.gz";
    };

    buildInputs = [
      rhash
    ];

    hardeningEnable = ["pie"];
  }
