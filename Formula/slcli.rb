class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.12.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.12.0/slcli-macos-15-intel.tar.gz"
      sha256 "a66ef0e11bae9cd80eaa429f48995d69b07c21f8ee9ac5e09143bf71649a56e8"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.12.0/slcli-macos.tar.gz"
      sha256 "e486cf961e3d63d0f4141c859e66b5492c195225d2dcfe39317cd81e1939d8a8"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.12.0/slcli-linux.tar.gz"
    sha256 "f99bd158e98bf3f07f05431007352054ee9497295f33687bf50b8e4f92c787e4"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
