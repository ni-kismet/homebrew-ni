class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.4.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.4.2/slcli-macos-15-intel.tar.gz"
      sha256 "2c6ffb0a3724cc422df73c7c207d545fd78d0ea6e3799a8efa843ba746919fd0"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.4.2/slcli-macos.tar.gz"
      sha256 "5c0f18d304947c5d7de995e9d17e1935cc1f09dbb36125af2379ab7cb1e72ce2"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.4.2/slcli-linux.tar.gz"
    sha256 "fe4daddcc5b0d53da21b33574f1868484ea1cd95eb4deb93bf6b0a5448dbfbf1"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
