class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.13.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.13.1/slcli-macos-15-intel.tar.gz"
      sha256 "d80eb8ac3988fb8204b138a3e6472d47e6aec272cf687288cde7973bf1f1e1bb"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.13.1/slcli-macos.tar.gz"
      sha256 "38da2e3110aab85d25033dd23a3a2a56d061408efc20f89f37bf492003f3f6bd"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.13.1/slcli-linux.tar.gz"
    sha256 "9867b03af6eeed1fc7877d2803535230079c058cf9e11ec9fe75f3c017324a1a"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
