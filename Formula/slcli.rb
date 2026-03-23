class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.4.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.4.1/slcli-macos-15-intel.tar.gz"
      sha256 "1f2f12df9610db76ec24d528e35fe86ffd20ea0829d3bb0181cb6883bccff282"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.4.1/slcli-macos.tar.gz"
      sha256 "bc011b7c970b3b4e1ce892aa5cdbf056eb8e579f524454a441503e82dd32a160"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.4.1/slcli-linux.tar.gz"
    sha256 "5aada53be792ff5482921eb1caffb512c4f89cf2c7d08647bce71dd3e5d3e122"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
