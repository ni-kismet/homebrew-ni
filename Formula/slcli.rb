class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.22.0"
  license "MIT"

  on_macos do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.22.0/slcli-macos.tar.gz"
    sha256 "5b73dac1e66187a687cd691d4b0c3d9566b9e6381a5c9c336c96c980dd410194"
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.22.0/slcli-linux.tar.gz"
    sha256 "4e4d3cd6a17ee2b2d2eb7cc52511c2cfe27ed19b85aeae81e2662891d2e3160a"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
