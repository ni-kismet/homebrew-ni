class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.22.2"
  license "MIT"

  on_macos do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.22.2/slcli-macos.tar.gz"
    sha256 "7b568aacddf269c8c804edaf6a9fe6fc5fde8f8280e06dcdb4adeb30be940278"
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.22.2/slcli-linux.tar.gz"
    sha256 "0f9fce9ca90f4df3711f035b05ad7e747cb075abaed7ddbd21cdb91bdb04eefb"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
