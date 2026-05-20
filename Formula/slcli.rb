class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.13.19"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.13.19/slcli-macos-15-intel.tar.gz"
      sha256 "b061973dede6db419b2a8cf0e73609288bc2d34e1fba03283d1d68c3780bf11d"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.13.19/slcli-macos.tar.gz"
      sha256 "b7df4fde75ad66f0b25610ef364d9eba938bd1a41c56f157d6a52908abd3b727"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.13.19/slcli-linux.tar.gz"
    sha256 "6064a010355e418500ac7d80e7bdacb4c8eb136aa79f1529efe4046cb4cee9e4"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
