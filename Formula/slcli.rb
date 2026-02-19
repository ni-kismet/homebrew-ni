class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.31.8"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.31.8/slcli-macos-15-intel.tar.gz"
      sha256 "791140e62f7da6d74f9032d508af4ed1ff8ecb50ee288104c7b5243369724e16"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.31.8/slcli-macos.tar.gz"
      sha256 "f27114a305b93ba368a0c95dd0bc729f90ee0567c7aa6fa95906e2259eb6942e"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.31.8/slcli-linux.tar.gz"
    sha256 "735206c4e7bd07217b23bc3bdd0d47f54f41bd43535500c8ff3433f71b1d293c"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
