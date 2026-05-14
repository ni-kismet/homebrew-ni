class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.13.10"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.13.10/slcli-macos-15-intel.tar.gz"
      sha256 "459aa604e348de94ff3cc20d278bde91e4034ba8a1c2245dfe501be8f89fba52"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.13.10/slcli-macos.tar.gz"
      sha256 "e3154f480a8f63454cb21571603820c4a0303e67f9ef38d003bdd17057240b47"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.13.10/slcli-linux.tar.gz"
    sha256 "16f577ab76604d16455be461b6d07dcc1b9b94232c7c9805feb9f2cd1d4bd9c9"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
