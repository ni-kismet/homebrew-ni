class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.4.2"
  license "MIT"

  on_macos do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.4.2/slcli-macos.tar.gz"
    sha256 "18224f0900e0992f66618a822061a74358b83e9ba0014209bb09c2d84df204e2"
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.4.2/slcli-linux.tar.gz"
    sha256 "368d8e2ad34265cf954f80795d337cdd67e2424ddcac91fbd8facb6f89eee143"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
