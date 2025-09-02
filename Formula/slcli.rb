class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.9.0"
  license "MIT"

  on_macos do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.9.0/slcli-macos.tar.gz"
    sha256 "f607378467e41eb3e33c3495da60beb526fb4de969cfe27f85f55950e995890c"
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.9.0/slcli-linux.tar.gz"
    sha256 "a67e8bdf77a8e8aaae299e016b7fecb8b3b163b90cd20bc9022da55e61ec0ad3"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
