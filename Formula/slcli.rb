class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.16.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.16.2/slcli-macos-15-intel.tar.gz"
      sha256 "05a55c4e817ee04ba5595537b17325845f6209f7a0c6740981c6171d0c34d5dd"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.16.2/slcli-macos.tar.gz"
      sha256 "df5df8cd710f1d9f5bd56983043b29935e8b839b23960b02b2bc78fdca9dd5c1"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.16.2/slcli-linux.tar.gz"
    sha256 "2cda1682a1f4d3a2cdc1d963b2feca21c0d0144922446210212d021edf047187"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
