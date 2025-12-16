class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.19.1"
  license "MIT"

  on_macos do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.19.1/slcli-macos.tar.gz"
    sha256 "e4ae8f92feed9e44f91f3a3330f786f9bcdfcebb423faf9135bfecc313199dc3"
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.19.1/slcli-linux.tar.gz"
    sha256 "0aa318f070786659ae22b1301be907104317fdcd8201161656c0e05b8837d5b8"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
