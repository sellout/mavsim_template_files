# Python implementation of mavsim

## Usage

### 1. Set up your environment

#### a. if you have direnv & Nix

`cd` to the directory containing this file, if `direnv` is configured, then you will get a message that you need to run `direnv allow`. If you do that, then any time you enter this directory, there will be a version of Python with all the required dependencies automatically installed made available via your shell.

#### b. if you have Nix (but not direnv)

`cd` to the directory containing this file, then run `nix-shell`. That will start a new shell process with the correct version of Python and all the dependencies necessary to build this project

#### c. if you do not have Nix

Install Python and the required dependencies. A list of the direct Python dependencies can be found in [the Nix derivation](../default.nix), following the line containing `python3.withPackages`.

### 2 Run the code

After the environment is set up, something like
```sh
cd mavsim_python
python -c "import chap2.mavsim_chap2"
````
Should load the template for chapter 2, asd show a cube in a 3D space.
