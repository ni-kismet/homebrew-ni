class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.4.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.4.3/slcli-macos-15-intel.tar.gz"
      sha256 "2020dce0c0915788a58c843974dcbb2c22b69dfbebee5452c843d457ea7e587a"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.4.3/slcli-macos.tar.gz"
      sha256 "dac1565fe503bc08343252d103c49aae1b6f9a2c03afa1ddf36421df0eaeb422"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.4.3/slcli-linux.tar.gz"
    sha256 "8123dcb287f187e1396915fb26ba021a1e37d58cabb7128d02a5691de07fff4e"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
