class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.5.0"
  license "MIT"

  on_macos do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.5.0/slcli-macos.tar.gz"
    sha256 "ff4bd07a4dda9af2f203165823974966e1bbc84dffb1bfa0c04e20dab99b7d8e"
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.5.0/slcli-linux.tar.gz"
    sha256 "b539396d273f788b3422aa44a7081015ecb22d9e0b2832e7ed86b3ce57bb0ef7"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
