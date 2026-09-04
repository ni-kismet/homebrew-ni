class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.27.7"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.27.7/slcli-macos-15-intel.tar.gz"
      sha256 "2ae9d96a4bdf759506460ddb879bcf9c1bfecd1f3d951e01ff3d44c08f9b6411"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.27.7/slcli-macos.tar.gz"
      sha256 "83977dc0e6577920246985c04a15934649a13e7f9f29da342bbbf2a7fde66f7f"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.27.7/slcli-linux.tar.gz"
    sha256 "e9e21868699d2ceb81cc25f540c684394139f84d7adbc765df737685e8de4041"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
