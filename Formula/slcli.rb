class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.4.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.4.0/slcli-macos-15-intel.tar.gz"
      sha256 "a3ff2aa87ee03b1983b3fb0aa8a19e419243fc157cb9b47b5b0c49d3d2f30fc6"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.4.0/slcli-macos.tar.gz"
      sha256 "c19c1252bd268da0d7933b668a9c5a5702009b24c38be73a99718e6edf010111"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.4.0/slcli-linux.tar.gz"
    sha256 "cab11c30659df27b9bbe02f2ea0ce97a3d97bdd2f8def95fde569746554e4eb2"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
