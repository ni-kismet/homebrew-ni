class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "3.3.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v3.3.3/slcli-macos-15-intel.tar.gz"
      sha256 "4f30d70d81056900d678c480ddcad7874a485e7122cbb4c939c88779dc30d7a0"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v3.3.3/slcli-macos.tar.gz"
      sha256 "f1bca0426c822859028b45c58c9756ac83e6f7c1a83a30f243edbc23fd1272f4"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v3.3.3/slcli-linux.tar.gz"
    sha256 "7e322a959023a2c517f970771e5f672b619d6e57f791f59660acbc79655b4005"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
