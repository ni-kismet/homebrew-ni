class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.29.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.29.1/slcli-macos-15-intel.tar.gz"
      sha256 "2cb1254d19fe5697c615412d7dd9c48e702f042d2471d0271f6331caa4cbca87"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.29.1/slcli-macos.tar.gz"
      sha256 "5a6c2a6c7bf04a764374aa5ec3a2ca040471822e903406e872c04e4bd4756184"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.29.1/slcli-linux.tar.gz"
    sha256 "1bdbeb32b226482e7b4ac3da82c5c975895056323be68e4557a48dfbfaf80080"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
