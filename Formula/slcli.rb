class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.3.0"
  license "MIT"

  on_macos do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.3.0/slcli-macos.tar.gz"
    sha256 "ab3ef131342564ea7f70a0d4e64695767cb2d1902f99ee508d37f70179ff61f7"
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.3.0/slcli-linux.tar.gz"
    sha256 "5b68ad7a3d16c34d5339404982469e13e8b6a66126766f47b99e6f99044038e4"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
