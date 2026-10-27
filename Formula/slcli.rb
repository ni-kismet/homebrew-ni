class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "2.4.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v2.4.2/slcli-macos-15-intel.tar.gz"
      sha256 "e995caa2304ac8f75220e0c4154327be5d89a02086392054d3b06318bb90d41e"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v2.4.2/slcli-macos.tar.gz"
      sha256 "8786275dc89b749dc5a6319fc2e0a3be7537f49a4f158934bc52a8c0b8a9a683"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v2.4.2/slcli-linux.tar.gz"
    sha256 "f37c2d089b37ea09f56fdb9b0cd62cf82af79fc2bacaefa11a591c38fd66e70b"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
