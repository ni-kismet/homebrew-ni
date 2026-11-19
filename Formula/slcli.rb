class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "3.3.5"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v3.3.5/slcli-macos-15-intel.tar.gz"
      sha256 "63b8037de9bdb319a21a3888239c392681fd8c0fb69ec049e8948bcfcee6f345"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v3.3.5/slcli-macos.tar.gz"
      sha256 "1d72b5aaf2d70412270d041f354ff086b3882c84a378cb6882eab207cd4cbffe"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v3.3.5/slcli-linux.tar.gz"
    sha256 "cf0b21c2772ae8062b6e6b4f375b0d67eccaecf606ba6155f74f4dff2c530209"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
