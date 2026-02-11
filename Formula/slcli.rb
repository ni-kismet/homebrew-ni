class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.31.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.31.4/slcli-macos-15-intel.tar.gz"
      sha256 "71ade3ebdffb27efff2b074ba9ac43357f7b6396793b282c800d34312e058060"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.31.4/slcli-macos.tar.gz"
      sha256 "be3727d8556c8d2ec3590a700d0d6e529950e003d521d073f3b0d948d35547ad"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.31.4/slcli-linux.tar.gz"
    sha256 "f421afefc83c9f20b4f0c41fcb77af27e38939dc3e0bb09f14e7b7a3d0524b1a"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
