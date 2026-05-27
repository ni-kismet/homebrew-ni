class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.13.20"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.13.20/slcli-macos-15-intel.tar.gz"
      sha256 "ea0c51ccc005bdaa3b6de39a157e56195c96caf1c21bfbca1a224f63da8a3270"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.13.20/slcli-macos.tar.gz"
      sha256 "c77fa757eeac795311ae096b04f4550961bd14113f728d02797b100367d52bc6"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.13.20/slcli-linux.tar.gz"
    sha256 "3eb223c58fade0dbbc97b45b8143438e95f492a385a9a133136eaa4fea3cb763"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
