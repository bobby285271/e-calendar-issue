{ pkgs ? import <nixpkgs> { }
}:

pkgs.stdenv.mkDerivation rec {
  name = "e-calendar-issue";

  src = ./.;

  nativeBuildInputs = with pkgs; [
    meson
    ninja
    pkg-config
    vala
  ];

  buildInputs = with pkgs; [
    glib
  ];
}
