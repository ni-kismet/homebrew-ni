class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.3.1"
  license "MIT"

  on_macos do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.3.1/slcli-macos.tar.gz"
    sha256 "945a672e022016e5c29abf5f2d4dae92c60d1b8993c3b60536acb46e2b6a50c8"
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.3.1/slcli-linux.tar.gz"
    sha256 "36ec47f4dceaa5b1e1b17b769e9f1f51a2675577abc720a3fc4bc12f018ebf0d"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
