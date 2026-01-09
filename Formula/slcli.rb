class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.24.0"
  license "MIT"

  on_macos do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.24.0/slcli-macos.tar.gz"
    sha256 "f751cc6ef70c3059a87f60176083d076faf07a89a7f82a67779fe4b5f3bc4175"
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.24.0/slcli-linux.tar.gz"
    sha256 "56e447c30ec2ff3367efbd7f4ed00a4aef2c4edac980fc9784070c8fa5d0f7b1"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
