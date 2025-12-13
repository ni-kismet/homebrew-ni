class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.16.1"
  license "MIT"

  on_macos do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.16.1/slcli-macos.tar.gz"
    sha256 "215e8594ef40223121e7928a51b5d3f5f4b327ac769e61837971247d7527d1cf"
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.16.1/slcli-linux.tar.gz"
    sha256 "41bdf661f63039799630493566c54b6a248aed4788426c06e0fd73d88f5bcd15"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
