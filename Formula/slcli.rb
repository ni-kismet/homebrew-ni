class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "3.0.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v3.0.0/slcli-macos-15-intel.tar.gz"
      sha256 "87a90015f12f2b5d9ee86db478defa97f2155f56cef5b49d728a1e221d024f64"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v3.0.0/slcli-macos.tar.gz"
      sha256 "e013929eb98044cf06e608c0899deff224322f43afb31c9310cf615a3b39542b"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v3.0.0/slcli-linux.tar.gz"
    sha256 "cc187992b4a4309afc7ee139ad8215fe4a6d4152b437fbd5a7ca021e8f2f6475"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
