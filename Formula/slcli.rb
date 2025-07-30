class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.7.2"
  license "MIT"

  on_macos do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.7.2/slcli-macos.tar.gz"
    sha256 "67164f15a6ec541ce9897f097c65500f8dd21b8e5cbf93d326f7a015adefca22"
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.7.2/slcli-linux.tar.gz"
    sha256 "83d7f70b03aa41813b555bec23aa44777c9909aa68dd61e6937905afe8e129fd"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
