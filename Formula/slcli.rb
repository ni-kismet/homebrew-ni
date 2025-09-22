class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.11.3"
  license "MIT"

  on_macos do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.11.3/slcli-macos.tar.gz"
    sha256 "4f50b87d7579c5498b1a46b673ffb7b39cbc82c1516bc884af7b2b6e53256030"
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.11.3/slcli-linux.tar.gz"
    sha256 "39f131601ae373e14d4bae103a69c12a96c7d9ee2387a829d913252d27b49ceb"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
