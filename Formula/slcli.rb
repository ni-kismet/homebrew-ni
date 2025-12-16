class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.19.0"
  license "MIT"

  on_macos do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.19.0/slcli-macos.tar.gz"
    sha256 "159db81827d6e2fa5e5926ce8aebe44f6fc63142d1abc6f58a22a9ba87251232"
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.19.0/slcli-linux.tar.gz"
    sha256 "0836342e26654d5ab52bfe491188e714036cc3db300fed2d92444542197e8f38"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
