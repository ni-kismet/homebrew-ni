class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.13.13"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.13.13/slcli-macos-15-intel.tar.gz"
      sha256 "c308b8bc6125d1b3530175b7774d7a4088baa67d82c161f98a422b3b1e09e7fe"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.13.13/slcli-macos.tar.gz"
      sha256 "9d513b9bf54d0b146052eef4b6ce75003f81bed2f3db02aa281229dacbd42f2a"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.13.13/slcli-linux.tar.gz"
    sha256 "4af794d7e89e1d6f0e21babc2fb2e7204c2456af0def32db46ca904299a8735d"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
