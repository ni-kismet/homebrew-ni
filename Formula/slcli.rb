class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.20.1"
  license "MIT"

  on_macos do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.20.1/slcli-macos.tar.gz"
    sha256 "1b07ffdd4e6865661aab18dadbcc6453dc05115bc8d747c519da918a6987d43a"
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.20.1/slcli-linux.tar.gz"
    sha256 "feef389bc46a4045638dc0df36fdaee5d8e3c0dc863a72d8f8d2225f8718127f"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
