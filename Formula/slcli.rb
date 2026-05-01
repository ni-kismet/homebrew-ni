class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.13.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.13.0/slcli-macos-15-intel.tar.gz"
      sha256 "6f60e3bbae18e1ccf7f21ec95a489a9581c5ee97b2472083b15a8061dc33265d"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.13.0/slcli-macos.tar.gz"
      sha256 "7de47272fa09f4dffe13094b0aa82b2ec253834d33a99c6a53e00701dfaed4cf"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.13.0/slcli-linux.tar.gz"
    sha256 "b497a5ea7d620a2e2f720c95afa78e45b45a01571afeabcf82f15f0725701773"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
