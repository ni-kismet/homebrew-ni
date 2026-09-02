class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.27.6"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.27.6/slcli-macos-15-intel.tar.gz"
      sha256 "4d7926d64bbeb1c6a1154f369d31785a9b2ed7245a6231eb04e034deb3b74934"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.27.6/slcli-macos.tar.gz"
      sha256 "75919df1da4e56748532a83d4ba284d4211f73e65778d12837457929246d4204"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.27.6/slcli-linux.tar.gz"
    sha256 "3034c6053ebeae8da3d622a4577d1d2582b30b88458d485e516529539f68d46d"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
