class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.6.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.6.1/slcli-macos-15-intel.tar.gz"
      sha256 "57f9ebaaea06b52c72a40ee71ee5181a2587c6999f3609fb524abff21b373f16"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.6.1/slcli-macos.tar.gz"
      sha256 "ff4c563f66f9cd204991bdb4966f5e7dfcd759868fac98b2a03149ea60ed9247"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.6.1/slcli-linux.tar.gz"
    sha256 "7c830433408a71c9953619ef7bd988688e2df0fcfc64b9918d19c6f8bc839364"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
