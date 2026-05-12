class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.13.8"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.13.8/slcli-macos-15-intel.tar.gz"
      sha256 "ae5a2278513d03640311654d75b4a4e134b804e392ba0692274b9efb89e3c0d0"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.13.8/slcli-macos.tar.gz"
      sha256 "e8ca5e3f509f7f86ece4951127fa80d81d6e7cd548f7fb5d71f2a70ed57a9569"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.13.8/slcli-linux.tar.gz"
    sha256 "2ee2d3f64b219f6a48d6deb83a930e0278029f6d05b8cde214cbe84d53552e3f"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
