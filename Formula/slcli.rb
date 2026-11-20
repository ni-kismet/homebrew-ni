class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "3.3.9"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v3.3.9/slcli-macos-15-intel.tar.gz"
      sha256 "716e7bbf00df8b8785a49497175cfdaa2e6292c9242b08244d60a187ebeff98f"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v3.3.9/slcli-macos.tar.gz"
      sha256 "56dc9f491e2722f2443c4ae4dcdb1dc2f121dd753971110d267ae9f2feb0b2c2"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v3.3.9/slcli-linux.tar.gz"
    sha256 "6ee1b3e81e99ce799c8636315b1e6896bf37680a6b01f4461f0ef487ff466455"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
