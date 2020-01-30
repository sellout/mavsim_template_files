with import ./nixpkgs.nix {
  config = {};
  overlays = [
    (selfPkgs: pkgs: rec {
      python3 = pkgs.python3.override rec {
        packageOverrides = self: super: rec {
          # PyOpenGL is broken on nixpkgs
          # https://github.com/NixOS/nixpkgs/issues/76822
          pyopengl = super.pyopengl.overridePythonAttrs(old:  rec {
            version = "3.1.0";
            src = self.fetchPypi {
              pname = "PyOpenGL";
              inherit version;
              sha256 = "1byxjj6a8rwzhxhjqlc588zdad2qwxdd7vlam2653ylll31waiwv";
            };
          });
        };
      };
    })
  ];
};
mkShell {
  buildInputs = [
    (python3.withPackages (p: with p; [
      matplotlib
      numpy
      opencv3
      pillow
      pyqtgraph
      pyscreenshot
      pyside
    ]))
  ];
}
