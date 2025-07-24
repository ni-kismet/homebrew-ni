class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.2.0/slcli.tar.gz"
  version "0.2.0"
  sha256 "d765a4e492f83d0227bd4d0bdde277d32bc8f21fd08ed729800749fb2a9e4e10"
  license "MIT"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
