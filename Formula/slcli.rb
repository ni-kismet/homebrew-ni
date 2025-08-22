class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.8.0"
  license "MIT"

  on_macos do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.8.0/slcli-macos.tar.gz"
    sha256 "4f8ef3c7f2e76ad604a33a13907a533ceacf9d33e751758cf1aca562f425dbe0"
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.8.0/slcli-linux.tar.gz"
    sha256 "ff12602d6fd5e303847e196d22aa92f92ab3c37fea3ddb53c1785e4b49c6185d"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
