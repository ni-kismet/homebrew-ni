class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.7.0"
  license "MIT"

  on_macos do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.7.0/slcli-macos.tar.gz"
    sha256 "60ff398009f53d63ab91308f69e4de448a14df0a71f3141a61f25a28b0443b80"
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.7.0/slcli-linux.tar.gz"
    sha256 "e7e65e4bb27232af605ab4277aec3bb5483ff9dc9d1515960d19f2c27c02c508"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
