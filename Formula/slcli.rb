class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.8.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.8.0/slcli-macos-15-intel.tar.gz"
      sha256 "fbd3ce6a46fab855995867227d2c978977a6fb15110fc0dd8b1d64c01325044b"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.8.0/slcli-macos.tar.gz"
      sha256 "b36b5ddf1707abd47e4c9edf2cdf20ac1cf1a1a2da6e676e58057b5dd3cd2533"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.8.0/slcli-linux.tar.gz"
    sha256 "61bea8a14a7a475fce802b5b092ad1e4a6843fbcb04d4fdd014bb02abd4b4cd3"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
