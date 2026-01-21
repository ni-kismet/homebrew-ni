class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.24.3"
  license "MIT"

  on_macos do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.24.3/slcli-macos.tar.gz"
    sha256 "0954b4ec826d7365355f6b17ee710f0644bb44d2886d305172d05fe4a22802cb"
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.24.3/slcli-linux.tar.gz"
    sha256 "97299ad58c59fc055ddfd364908bca894bd8176b02ffbbe75142988ec70ccd0e"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
