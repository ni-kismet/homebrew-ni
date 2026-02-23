class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.31.9"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.31.9/slcli-macos-15-intel.tar.gz"
      sha256 "daf8250f0f6fa24bab52c488daeb4bb3db74ba8ce14bc18eec3f90e88d67e307"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.31.9/slcli-macos.tar.gz"
      sha256 "069b2122982343785f71b1f44390205286ae5fc8d2c655cfc6aa6c9206f9417d"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.31.9/slcli-linux.tar.gz"
    sha256 "6e3a662a70e45e6ae9e01c7a0161e83df7c46ac2364f353eb0740456e338fb2d"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
