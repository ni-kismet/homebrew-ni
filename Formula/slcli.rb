class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.21.0"
  license "MIT"

  on_macos do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.21.0/slcli-macos.tar.gz"
    sha256 "7c6d8346a1ac961e4777908287c81a93da2c2831f6d23265652f027707f7d8e4"
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.21.0/slcli-linux.tar.gz"
    sha256 "52076dec349fec0af6615e2e179c9695057013b33990072512ae9ead02dccd01"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
