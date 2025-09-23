class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.12.0"
  license "MIT"

  on_macos do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.12.0/slcli-macos.tar.gz"
    sha256 "06f7d625ff13728da518473f1d142a5f93109265213087b4db4b0bdf202f2e49"
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.12.0/slcli-linux.tar.gz"
    sha256 "0116095dc317a9ee15cbf94ec4c53b5b8b2d72d1b1baf6dd09607166e9be7b0e"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
