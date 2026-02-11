class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.31.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.31.2/slcli-macos-15-intel.tar.gz"
      sha256 "77e886009dadc2fcf3949ff9702598f57b1b8a65a2e093b1832c52a208708327"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.31.2/slcli-macos.tar.gz"
      sha256 "fb381b562a2ef5fe0baa9480d39367f72f22184a3a8b996dc3d257e2789ea51c"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.31.2/slcli-linux.tar.gz"
    sha256 "16ef2c568428de0d9a6e7929161913771c4c6a26232d8be351c8d2553a4725fe"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
