class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.31.5"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.31.5/slcli-macos-15-intel.tar.gz"
      sha256 "49f6b39f3a6a09b072bf76abcd78ca1e930defe9cf1befb65436c200da158e74"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.31.5/slcli-macos.tar.gz"
      sha256 "32b56a9960f90bcd4d38fc82c4ed464101d8a0dcf3bf87c854b52b2136b478cf"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.31.5/slcli-linux.tar.gz"
    sha256 "4c1795cf874be13191e5cb2d63ce1713abb8b3b1395a79ead40e8296318d13fb"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
