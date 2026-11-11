class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "3.0.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v3.0.2/slcli-macos-15-intel.tar.gz"
      sha256 "a01aa4d889ce91f0bf8dee4d994a1d39a8fbe645a1b99ba4d66ab8250e39e344"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v3.0.2/slcli-macos.tar.gz"
      sha256 "5456b0d7fd4c1bf5461d8a20415e3c738481226f53404c0dad4978c610fcbce5"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v3.0.2/slcli-linux.tar.gz"
    sha256 "02c4ad70dff64c75df80daa6364e77f26abe733f7df0bcedf8e06c27135f6c81"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
