class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.6.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.6.4/slcli-macos-15-intel.tar.gz"
      sha256 "7ab857c3ceaa5571e3097a14dc67248b6fc4cd1a20b6aad7042407acdf90a526"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.6.4/slcli-macos.tar.gz"
      sha256 "5c9e1ca0be775c333d90b16a76ef54b666b689eda5b145c38d06c6dcbafe32ef"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.6.4/slcli-linux.tar.gz"
    sha256 "27ea216ab7fb0011fe004600f11be6c8d1c9a0543410fedccfd48490c2006626"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
