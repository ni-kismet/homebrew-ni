class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.11.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.11.0/slcli-macos-15-intel.tar.gz"
      sha256 "57f6e7a501389aa03edbf3a8ec18f9ce01bc21da5a53572e532c689708906389"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.11.0/slcli-macos.tar.gz"
      sha256 "7274c5aa2147ecc3e54f36883282b97ecb4d32cd0f80e96e319f21c1f774d04e"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.11.0/slcli-linux.tar.gz"
    sha256 "98ba20397e515e329f68618f295b365f3c6f5217a3883ee5b981d86cf7ec0382"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
