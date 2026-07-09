class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.15.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.15.2/slcli-macos-15-intel.tar.gz"
      sha256 "fbda3d63d67a0d74cb9e1c06f81b14b63000fee3252ea437bcccb2e8037f5f09"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.15.2/slcli-macos.tar.gz"
      sha256 "d314e40cfecdb25d2c499cd65fcd58b47d0b29c11bb46cb5c69bdb7955079ce6"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.15.2/slcli-linux.tar.gz"
    sha256 "f1bf921b3a8206c7f375f6a2a8ade7f8e08a5e7d211fa549d23aad60e84f5fd0"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
