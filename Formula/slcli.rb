class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.2.2"
  license "MIT"

  on_macos do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.2.2/slcli-macos.tar.gz"
    sha256 "9408ddb2af95eb4496513bbfc948669540c92a8e94d327a420f4a43e60922db4"
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.2.2/slcli-linux.tar.gz"
    sha256 "80ea276f35636a7cd4101335b50173644cacbd0cfc7d6f6afcb7c6880c7711b1"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
