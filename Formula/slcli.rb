class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.23.0"
  license "MIT"

  on_macos do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.23.0/slcli-macos.tar.gz"
    sha256 "2451ed64e81ca4766a96b34e435e6ab5512232ade13c0c2377607e1d1bc92d7d"
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.23.0/slcli-linux.tar.gz"
    sha256 "1f8e588256bd67f714a3ed573db44776f8e2433d5325fb90f133751a0f20cf56"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
