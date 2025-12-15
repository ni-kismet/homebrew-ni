class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.18.0"
  license "MIT"

  on_macos do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.18.0/slcli-macos.tar.gz"
    sha256 "e261d615dd361b7236255f70427d1aa8ce18f4feafb1762d0c2b935b571a20d0"
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.18.0/slcli-linux.tar.gz"
    sha256 "b2c63085d49e73921ff31d651a0cf357c301ca8190e83805edefa99c5cba18f3"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
