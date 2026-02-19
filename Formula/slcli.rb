class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.31.7"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.31.7/slcli-macos-15-intel.tar.gz"
      sha256 "f682f6eb49ae0844a26373f256a47d6259aa5cefb1aad1d349e0b67ef2efb932"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.31.7/slcli-macos.tar.gz"
      sha256 "66808c5711e44b3c4020603fecc6c615091e14340b2482deb652eaedb35a83f2"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.31.7/slcli-linux.tar.gz"
    sha256 "4316a8d57dbde1e1811370fa88092cb710c510da61dfeca527ea2f61a40f0a18"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
