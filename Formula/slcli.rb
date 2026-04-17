class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.9.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.9.3/slcli-macos-15-intel.tar.gz"
      sha256 "e6c89ddfaedfde4f5fed11e4aef83df67d79a9f3bc980937d1e048c5cf3261b4"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.9.3/slcli-macos.tar.gz"
      sha256 "245d9abe550be970bc6658cae3d44448d20afe6bbab3e0ac9d36921e0d1d256e"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.9.3/slcli-linux.tar.gz"
    sha256 "d4cb4ee1280fe7ee5a84b55ff7d47796fe1f1b4f14b8de8e260b586384bcb879"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
