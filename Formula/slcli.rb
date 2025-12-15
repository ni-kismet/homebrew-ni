class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.17.0"
  license "MIT"

  on_macos do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.17.0/slcli-macos.tar.gz"
    sha256 "e7f840fcd0f5dd2d5e0e1908ef20ebccf80cbe00b69d0dd894f8b03e902c4d45"
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.17.0/slcli-linux.tar.gz"
    sha256 "b01bf2f88d6765e5da0ffbbeff6c32f9c2b528a63310a6f9eea0713c66680bfd"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
