class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.4.1"
  license "MIT"

  on_macos do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.4.1/slcli-macos.tar.gz"
    sha256 "0456caf2d47db12fbec8695863721b6b969e25bf0eadc1a526ac73c400923228"
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.4.1/slcli-linux.tar.gz"
    sha256 "e8d58559a088cce971566e694f0542c09d9afebf383aec90fde7d199889b9a0b"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
