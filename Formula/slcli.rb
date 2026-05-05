class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.13.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.13.3/slcli-macos-15-intel.tar.gz"
      sha256 "f6e023e84c88a5aefae533168d9b118b7bf099bdb8fb78e943312581c888d3fa"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.13.3/slcli-macos.tar.gz"
      sha256 "00498fc55a184c83b142d266a1a1bc281c607bdf59ca2292a2069c361148d34a"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.13.3/slcli-linux.tar.gz"
    sha256 "f8e4c358860c01fc9de72ef2fef356ad0c86f1f6bb4fc11a542928bc6cde3cc4"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
