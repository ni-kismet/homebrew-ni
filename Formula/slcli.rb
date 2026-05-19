class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.13.17"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.13.17/slcli-macos-15-intel.tar.gz"
      sha256 "5b67721646c92cedb4d6f819b45b640f27f6ebe40d6d016280d08d59ff5d2ee3"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.13.17/slcli-macos.tar.gz"
      sha256 "4c26ae5f963968fbefcb8d2c6dc6a7682056390426f2b0ec4e4f3d4b6c02d480"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.13.17/slcli-linux.tar.gz"
    sha256 "f2b1f1bcb24c93cd13f2d7a7c221193150d8f51c767e7adf96550c3d944b2b2d"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
