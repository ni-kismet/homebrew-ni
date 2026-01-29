class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.26.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.26.1/slcli-macos-15-intel.tar.gz"
      sha256 "87ca45fbf5222fd183f1a38704a4b1ca1a67b985f2f27f6d294604ac624a260c"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.26.1/slcli-macos.tar.gz"
      sha256 "fa1bd9b7368f9aa13f0c473a1b4d338cd500b61ed209e945c7bbd344d2d69cbe"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.26.1/slcli-linux.tar.gz"
    sha256 "355efa662fa05679b6faf47eec5b28532068cd4ba8986f8a21ee268805539eac"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
