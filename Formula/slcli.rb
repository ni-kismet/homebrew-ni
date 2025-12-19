class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.20.0"
  license "MIT"

  on_macos do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.20.0/slcli-macos.tar.gz"
    sha256 "50e10321eed396a0cdf012332cda301ef176c7c46f202d7d439f8f516322d863"
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.20.0/slcli-linux.tar.gz"
    sha256 "4e5c95590fd9d3c6c588fa98c1618602d486f85b8a858f8702480bf73cf7185f"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
