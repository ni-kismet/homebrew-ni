class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.3.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.3.1/slcli-macos-15-intel.tar.gz"
      sha256 "a41670198c1d957243bfda2713649232a6dfec0212d6c2b994b5aee1243ba167"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.3.1/slcli-macos.tar.gz"
      sha256 "3d6198937ae930911581d1ae9caf62bad2f0df293edb69918efcfdd9e301cbd7"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.3.1/slcli-linux.tar.gz"
    sha256 "8d674d3cb07c136f8d4cf42ad5c949c798037cd6848fa99a8279fd582b7a2959"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
