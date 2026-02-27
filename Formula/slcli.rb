class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.35.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.35.1/slcli-macos-15-intel.tar.gz"
      sha256 "2a8a288c3cf16fcf68f78652b0ce26a467452c9f57fc0875c0be8ebd75196d11"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.35.1/slcli-macos.tar.gz"
      sha256 "6d47843ff110af643f107f18f927a2f2122b28d9c8018b3caa856cd02fcbf50a"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.35.1/slcli-linux.tar.gz"
    sha256 "86f1e3d464476d4b32e8a09bc2391c627003909160ebaadae4c6ae740f969b2c"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
