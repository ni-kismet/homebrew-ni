class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.19.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.19.0/slcli-macos-15-intel.tar.gz"
      sha256 "1dca216e0650ac1096d85dfdd9efc89774f00ff2fcbcf0c0e85291d0a97fa09e"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.19.0/slcli-macos.tar.gz"
      sha256 "6993ca44141dee168cdb8d9c1d589e22f7e541ad9dfd71140920b14dc20b2f00"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.19.0/slcli-linux.tar.gz"
    sha256 "882157ad20d010e58a5d0776d50a0a1cf2d8fe77cbfc68fb1dc0e836924d0d1d"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
