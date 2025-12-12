class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.15.0"
  license "MIT"

  on_macos do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.15.0/slcli-macos.tar.gz"
    sha256 "87c8d3aa4e18f1b655ae2373dc9c23272b8abde3304035ee419d6c281370abfb"
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.15.0/slcli-linux.tar.gz"
    sha256 "211d04a7431eeee1fbcc1b9d874a0f5bef418455ca38e14f70d03401fdd13a84"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
