class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.11.5"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.11.5/slcli-macos-15-intel.tar.gz"
      sha256 "bb8df45d81f1827c1eb3d43aec86c871260b7da9a65df9b33666fb94acbec1c6"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.11.5/slcli-macos.tar.gz"
      sha256 "b9c70bd62956225e042dc87cfa9e8b88792f942b771e010f31817ebacde51983"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.11.5/slcli-linux.tar.gz"
    sha256 "25215991387187f7c1d392b0ce1acd60aa26e15f4487e28c0ad5de684331ec72"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
