class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.30.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.30.0/slcli-macos-15-intel.tar.gz"
      sha256 "aa71fc822fc4d1a6a16edf46b6eec00dab077a68ba0e537e3f7e85177b17cc5a"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.30.0/slcli-macos.tar.gz"
      sha256 "dcfbb3e2de84b27cf2f43aebacc14602a332c753fe27da7dccc121f49729957a"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.30.0/slcli-linux.tar.gz"
    sha256 "42ab7de6012213418b8a2a835b727fddf8593f2f9588b595b285ecba49d88c6b"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
