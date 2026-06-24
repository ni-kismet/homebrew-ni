class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.13.21"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.13.21/slcli-macos-15-intel.tar.gz"
      sha256 "911cefea2e7c18eba418d4cf45cb777e89eeca6f3d2ed7877dcee0940a29bcf7"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.13.21/slcli-macos.tar.gz"
      sha256 "4001e901a63bb0fc7d59a1ed5214ad86911a532f6cf3e40643f269eee1a82ab3"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.13.21/slcli-linux.tar.gz"
    sha256 "7e05aa8a3012f9605e78874fbc985c4d623bc28b92830777c75ff9d8dc5f3afe"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
