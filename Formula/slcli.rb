class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.7.4"
  license "MIT"

  on_macos do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.7.4/slcli-macos.tar.gz"
    sha256 "4b0080123ee8dbd6b3624f1adf1533da741a3cef626badb0ba9894e1603ba688"
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.7.4/slcli-linux.tar.gz"
    sha256 "3868ec6947d82c9952081d2c57f44e7a78e703e802e1a21ee6b9f320ea65036c"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
