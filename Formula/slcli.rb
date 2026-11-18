class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "3.3.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v3.3.4/slcli-macos-15-intel.tar.gz"
      sha256 "d1fd58507bae8f49835b34be395494a0fb102506b48afd0d9c6c3ef374bf6228"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v3.3.4/slcli-macos.tar.gz"
      sha256 "3859b1289e9a53d09a9ed9953514af37c7b885e5cb569879b21c7f7101412078"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v3.3.4/slcli-linux.tar.gz"
    sha256 "d1dd23dae06ca194bf952f6a21008ee0f9c1b0cf98cdf1a7ad2b0356b7a133fa"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
