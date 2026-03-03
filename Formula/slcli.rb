class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.42.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.42.0/slcli-macos-15-intel.tar.gz"
      sha256 "f2838fa1d6203657980d507ae3609c3cbdcf78b44342418dc78d3259234666e2"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.42.0/slcli-macos.tar.gz"
      sha256 "1764f6c77e2414a7074f6ebcae4f6aeedf36f3a2297e37c88c537a0c5fc98c40"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.42.0/slcli-linux.tar.gz"
    sha256 "726066e629c4fffca9a2ee3434c9579dfaa5c12d759361dbbd2cb7899e2901cc"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
