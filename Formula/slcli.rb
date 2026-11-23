class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "3.4.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v3.4.0/slcli-macos-15-intel.tar.gz"
      sha256 "4df6a3b46c17f02ff67ce3222bd08fce8f1a3df666a0ada27fdb834b5e4672ab"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v3.4.0/slcli-macos.tar.gz"
      sha256 "74dd6938a0467c535da269d3323e072f82f2e8eb0b314839c5d3b83f861d9d00"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v3.4.0/slcli-linux.tar.gz"
    sha256 "141f5c6728d9106dca4aecbb3008952bad63900a8ec99966a25744e567ee7053"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
