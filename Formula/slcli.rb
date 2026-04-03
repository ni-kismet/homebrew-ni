class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.5.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.5.0/slcli-macos-15-intel.tar.gz"
      sha256 "6c5a3751533e792e527bbc222cfcb28b95048793e5bff5b9bd39a8b4fd883a5c"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.5.0/slcli-macos.tar.gz"
      sha256 "18904c006eda0807888d12306878953e21d8a88d4ec99ec2070cf102a847e3e5"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.5.0/slcli-linux.tar.gz"
    sha256 "d95e4a73e4ebde6f766137bcddd7bd611dcf75f40b46bdb376a5b9b9df47abea"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
