class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.13.5"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.13.5/slcli-macos-15-intel.tar.gz"
      sha256 "3f766267cc5209cf2ffd1c080db5490dbf492aac6238cd91bf5dfce52a424c41"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.13.5/slcli-macos.tar.gz"
      sha256 "c4b6cf9ab0cbfd11163ce6fbd0a7a0fc33754687e4c2687746fdec98a919e3fa"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.13.5/slcli-linux.tar.gz"
    sha256 "7d306449aa54845ae5d634a3c11aad5519cc04715fd165a8e2c68f8954c327e5"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
