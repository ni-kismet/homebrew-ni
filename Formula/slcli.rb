class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "2.5.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v2.5.1/slcli-macos-15-intel.tar.gz"
      sha256 "c7b76bb4b8ab6c0022ab552c463d4dce26193559cc22f421d69cb199c8e7503d"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v2.5.1/slcli-macos.tar.gz"
      sha256 "5260f413e5415dc9ff14c8d943ecbc69c68b7f9f41e4542b7047d2ff87f79104"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v2.5.1/slcli-linux.tar.gz"
    sha256 "b20371bfefa2e66ce31fe2b9f71d7fe589a6f9957818055c7cc7b34e17d4b7e4"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
