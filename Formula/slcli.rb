class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "3.4.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v3.4.1/slcli-macos-15-intel.tar.gz"
      sha256 "98ae80809a5fecfad1db3bb3cd1072607a808cbf2861d3083f083d14089d27f0"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v3.4.1/slcli-macos.tar.gz"
      sha256 "f3746fcedb85d34a9fd05558872650420f3d55b6aaf397d2a26ba6b7f37f7e01"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v3.4.1/slcli-linux.tar.gz"
    sha256 "f49b1fcc5f8cb9cd3bc6a5f792cbca0be1dca930dd35f3d86fc8dbd0bed6a9f5"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
