class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.13.14"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.13.14/slcli-macos-15-intel.tar.gz"
      sha256 "2ba230fa736d787352a3c36a7f91ec0417c21bb2370cd6d5c474ae0c3bb6af47"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.13.14/slcli-macos.tar.gz"
      sha256 "0fe9b2049393c45262b550772ee45bf5ebff36d55bca496c6f4e5a2d9586948a"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.13.14/slcli-linux.tar.gz"
    sha256 "cf2eecc0c0e57952f305c60136a05c815f3a89db00dbeae72954e1d9706b8079"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
