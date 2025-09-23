class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.12.1"
  license "MIT"

  on_macos do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.12.1/slcli-macos.tar.gz"
    sha256 "5d0bf4d2a0dda03da18b265bb8627a13752986f81c84204f4c1ab143ff1989a5"
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.12.1/slcli-linux.tar.gz"
    sha256 "15ecb07d5ca7933cf417a8d75ec9860ceee6622237e189d89dcb3283dca2c5b2"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
