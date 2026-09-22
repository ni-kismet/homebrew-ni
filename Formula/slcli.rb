class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.30.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.30.1/slcli-macos-15-intel.tar.gz"
      sha256 "7dc5782574b7d88aaa271b0a9a4c8c1891e7bc37c9c782bf19079a55abba3180"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.30.1/slcli-macos.tar.gz"
      sha256 "bf19a07cf20a68a26c62bf99eeca37640fe41956f3149febbd9785d530903b27"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.30.1/slcli-linux.tar.gz"
    sha256 "c7116ce4eff37e77dd486ca19b6ed6d2d0e39c425cf7464565a6b583c50e31f8"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
