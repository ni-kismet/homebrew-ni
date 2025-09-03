class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.10.0"
  license "MIT"

  on_macos do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.10.0/slcli-macos.tar.gz"
    sha256 "e50a6cf752e50d055a22a47daddb373026b128c1d0eb420b8ee2c1d6a9794a39"
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.10.0/slcli-linux.tar.gz"
    sha256 "8e6cae57aeb336d7c37dd257f0e6da510694bc8d2e460c98ecc1df07fa9ef37d"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
