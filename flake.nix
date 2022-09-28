{
  description = "elementary-calendar issue";
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/gnome";
  outputs = { self, nixpkgs }:
    let
      supportedSystems = [ "x86_64-linux" "x86_64-darwin" "aarch64-linux" "aarch64-darwin" ];
      forAllSystems = nixpkgs.lib.genAttrs supportedSystems;
      nixpkgsFor = forAllSystems (system: import nixpkgs { inherit system; });
    in
    {
      packages = forAllSystems (system:
        let
          pkgs = nixpkgsFor.${system};
        in
        {
          e-calendar-issue = pkgs.stdenv.mkDerivation {
            name = "e-calendar-issue";
            src = ./.;
            nativeBuildInputs = with pkgs; [ meson ninja pkg-config vala ];
            buildInputs = with pkgs; [ glib ];
          };
        });
      defaultPackage = forAllSystems (system: self.packages.${system}.e-calendar-issue);
    };
}
