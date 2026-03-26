class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.4.5"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.4.5/slcli-macos-15-intel.tar.gz"
      sha256 "9ae984d479f4ab275aec47371e646b8a97c0d93fd71b626df72d57fd9af753a2"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.4.5/slcli-macos.tar.gz"
      sha256 "c76cff3977bee911f6689206774503267f23a458b3ad7590a0aa23a6897015eb"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.4.5/slcli-linux.tar.gz"
    sha256 "5637767ba898f3b82300778411d44dcd0ffca9e041ba4f8d1962c39d54968d00"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
