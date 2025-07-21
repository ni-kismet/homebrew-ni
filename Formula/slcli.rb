class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.1.1/slcli.tar.gz"
  version "0.1.1"
  sha256 "915f236b4f237ade67f44c7e45030330757906dd02f24cdc67adb7b30e10e037"
  license "MIT"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
