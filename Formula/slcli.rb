class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.30.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.30.0/slcli-macos-15-intel.tar.gz"
      sha256 "4bba455dad8768080624f51615c84e30db4470df46c79271ca7f4c9e61e22be1"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.30.0/slcli-macos.tar.gz"
      sha256 "64cc9811c66ff2b0053be63c0542f1029ee5d85337275a81c994bd0f42ddc0ef"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.30.0/slcli-linux.tar.gz"
    sha256 "f0e55769a6742a6469674cbc62e3353057b4c7b16695430b983c6f591f87d231"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
