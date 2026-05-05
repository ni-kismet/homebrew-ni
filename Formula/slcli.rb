class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.13.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.13.4/slcli-macos-15-intel.tar.gz"
      sha256 "f1d6465aa02557bc2521789318ceb57d4e61b7c621f236ace404812a9ff785f5"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.13.4/slcli-macos.tar.gz"
      sha256 "ea025659522811a44ad6ac1530b7d524fe266a4baf0d477f6a96e16d52d64e23"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.13.4/slcli-linux.tar.gz"
    sha256 "b832358038eaa2a553c1f87d1bf496875d61ff7cac7fbbd3ccd3534ed5c56b2a"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
