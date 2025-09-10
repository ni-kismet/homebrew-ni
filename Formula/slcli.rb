class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.11.1"
  license "MIT"

  on_macos do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.11.1/slcli-macos.tar.gz"
    sha256 "373b68c0325fd32dfc4a37e3916a8ef5fad1513e30ba9d7c8ee28b49c3c802d6"
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.11.1/slcli-linux.tar.gz"
    sha256 "c8116d462ad96f19a2d4078cb51b18e1b08a8bc6025778f1b86820cad0475efe"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
