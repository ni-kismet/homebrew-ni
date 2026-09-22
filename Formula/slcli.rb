class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.30.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.30.3/slcli-macos-15-intel.tar.gz"
      sha256 "9769311123d0c0606c90af69ba1ef9a28719345fa48d4d2e1295e231013a630e"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.30.3/slcli-macos.tar.gz"
      sha256 "013625feef5c6fde1bc03970e0ee319eb98663956819d6cecc480823692d27e5"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.30.3/slcli-linux.tar.gz"
    sha256 "e12f6743a440b45e61712479093f30848f2712b8cc24f3b34847814a135c8395"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
