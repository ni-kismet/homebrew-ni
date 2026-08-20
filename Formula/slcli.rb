class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.25.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.25.1/slcli-macos-15-intel.tar.gz"
      sha256 "e923ef82f521fd9657ab4bda57d4419f9219292d8bb73107395712d15160ca05"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.25.1/slcli-macos.tar.gz"
      sha256 "8a0c0342027fca8a8c28094adc380f41e7efe28d49afec3e3ce6c57eb3e31ff7"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.25.1/slcli-linux.tar.gz"
    sha256 "7fa67be7b6566d342bea20f78e908365caa3f29b2beee218eeb4672af91d097d"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
