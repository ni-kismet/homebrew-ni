class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "2.4.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v2.4.1/slcli-macos-15-intel.tar.gz"
      sha256 "d6bccb2ca3f2199418cadb2f1e42cac8fdd174ac583d2210581514d37a1ad3c5"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v2.4.1/slcli-macos.tar.gz"
      sha256 "355b63133874765a048a7cfc67894d602f92c6e6bfa72db48a95d5a9021066c5"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v2.4.1/slcli-linux.tar.gz"
    sha256 "02fc795a082341ad1d79fdd45d3225e97a92a8bb52ea3f1c7fb3d7db96b93887"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
