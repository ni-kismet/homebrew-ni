class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.2.0/slcli-macos-15-intel.tar.gz"
      sha256 "6c0d9b0ad196eb1fe759f873413a9c7dd434a942cc15e3a9fb0939c8b85973aa"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.2.0/slcli-macos.tar.gz"
      sha256 "246a2f3875ecdb280d74ebb5e71135c08e8952eafe9ca0c4c6f5416782626650"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.2.0/slcli-linux.tar.gz"
    sha256 "cff15792f59b83c3f527676f720d21f5483f8b049e8a335fe57432ffe1d52adb"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
