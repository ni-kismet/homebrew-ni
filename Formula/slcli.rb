class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.13.0"
  license "MIT"

  on_macos do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.13.0/slcli-macos.tar.gz"
    sha256 "ab9edec7ee614efd9cd9211416a7c1b46caa159b372f9fcb1264302c4987b7c3"
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.13.0/slcli-linux.tar.gz"
    sha256 "0953a985b58d271e4c71aed8f52576288c0c516eea1cfc93049da89785d09be6"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
