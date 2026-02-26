class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.33.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.33.0/slcli-macos-15-intel.tar.gz"
      sha256 "810e58b9c3cde18082f7cd7d9489fa7cbe39fd90c5b6e76056b788844a0994f9"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.33.0/slcli-macos.tar.gz"
      sha256 "3702f640ff80824ad959a7a4e24cc256e67b89d911e392c076c8198b731d8a0d"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.33.0/slcli-linux.tar.gz"
    sha256 "be1b35b26a2fb6f10ecc4e58ec42a83a244069d69b9e9757dc2119999eb419bc"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
