class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.13.16"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.13.16/slcli-macos-15-intel.tar.gz"
      sha256 "0202caff299821c6777428133b2c240acd4f1e8f0e65186e9e7c77d225970dce"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.13.16/slcli-macos.tar.gz"
      sha256 "5423b14ecff55b5de07ac0685bc7c6062fd7a67aa112197e2f490af128fa2c56"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.13.16/slcli-linux.tar.gz"
    sha256 "554a4d5c346583b220c189db2f895d7a130d648ed6d4f99b69097ce69bca0dd3"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
