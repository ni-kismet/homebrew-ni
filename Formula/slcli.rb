class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.14.0"
  license "MIT"

  on_macos do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.14.0/slcli-macos.tar.gz"
    sha256 "897b5362eacec0e7319ab9b6383f8ed74bfe2efee97ce333cf05957f4304eff8"
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.14.0/slcli-linux.tar.gz"
    sha256 "258442d4c320c5f556cbcb9654e5f9b3bda8c9a8c310f7997a71137608c91a34"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
