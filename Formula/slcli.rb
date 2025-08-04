class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.7.5"
  license "MIT"

  on_macos do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.7.5/slcli-macos.tar.gz"
    sha256 "895abfe9bb524c07d604a0e9c2fec0bdbacf7504006592eb37d943c8552964c9"
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.7.5/slcli-linux.tar.gz"
    sha256 "2cdfcf89a2191211ad197c7c55d4180277cf3d57a34d5e550c51896d323d73a6"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
