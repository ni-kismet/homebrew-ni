class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "2.3.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v2.3.1/slcli-macos-15-intel.tar.gz"
      sha256 "bfe4571555887b4077a8bc9360964bf1ccc587810eb38921de043ee69cc44898"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v2.3.1/slcli-macos.tar.gz"
      sha256 "ee8d92a475b62e6abcd6d9d5ff0c0c9b4471dda1ef95a085e598693aa05b2dd6"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v2.3.1/slcli-linux.tar.gz"
    sha256 "763297c64bb4eda8e1bb8a59081d13bf5e6ad18afb80588ec3bb53babf2baf87"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
