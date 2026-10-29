class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "2.5.6"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v2.5.6/slcli-macos-15-intel.tar.gz"
      sha256 "6c44e4b0c0eee99e923de6ebe28e7d286fb6eb0ba908315ecf854afb1caa3fad"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v2.5.6/slcli-macos.tar.gz"
      sha256 "fab1a7ad0ec781ba8f3a86238b9bc55170c89dcb7c8012dccef124cac625c2bb"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v2.5.6/slcli-linux.tar.gz"
    sha256 "37d8fc529b8301ecb0aa36a45ddc5f2c97f8e423ef647bad155f141fb88702bf"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
