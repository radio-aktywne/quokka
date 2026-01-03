# See: https://github.com/NixOS/nixpkgs/blob/47d1011a3e497119111a2e25a6c043dce3e41e45/pkgs/by-name/ic/icecast/package.nix
{
  curl,
  fetchurl,
  libkate,
  libopus,
  libtheora,
  libvorbis,
  libxml2,
  libxslt,
  pkg-config,
  pkgs,
  rhash,
  speex,
  stdenv,
}: let
  libigloo = pkgs.callPackage ./libigloo.nix {};
  pname = "icecast";
  version = "2.5.0";
  sha256 = "sha256-2aoHx0Ka7BnZUP9v1CXDcfdxWM00/yIPwZGywYbGfHo=";
in
  stdenv.mkDerivation {
    inherit pname version;

    src = fetchurl {
      inherit sha256;

      url = "http://downloads.xiph.org/releases/icecast/icecast-${version}.tar.gz";
    };

    buildInputs = [
      curl
      libigloo
      libkate
      libopus
      libtheora
      libvorbis
      libxml2
      libxslt
      pkg-config
      rhash
      speex
    ];

    hardeningEnable = ["pie"];
  }
