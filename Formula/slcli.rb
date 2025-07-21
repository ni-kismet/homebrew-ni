class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.1.2/slcli.tar.gz"
  version "0.1.2"
  sha256 "bc9b1668c3c2bc75a95f3d66691751621fa6cda9c7467a5f4780be678314c8ac"
  license "MIT"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
