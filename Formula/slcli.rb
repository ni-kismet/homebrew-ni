class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "3.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v3.1.0/slcli-macos-15-intel.tar.gz"
      sha256 "c46aab9ed3b1ac13bafdfab6004774d09c127b192092269a0ad5e791597459fb"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v3.1.0/slcli-macos.tar.gz"
      sha256 "8676af564ace6a8fd121c9ffe059e34f096fd1393b9a51df118b8f9af2cf2ca6"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v3.1.0/slcli-linux.tar.gz"
    sha256 "aced05fa579bb6afde8715626210939c546060ee6c9bcc8aeb6c96812a41b680"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
