class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.27.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.27.0/slcli-macos-15-intel.tar.gz"
      sha256 "f47be95c18e5b1ecd1bd39b61863f71e2aa384051f3c31ff7be40419437addc0"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.27.0/slcli-macos.tar.gz"
      sha256 "7922e5a111aaa7eaecc7fde1aacc66a4c78b3f668850a56bae445e02e69af12c"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.27.0/slcli-linux.tar.gz"
    sha256 "4210a3b2ad8ef2f85dc46a5d26bbd568b32b6b4622f3056833d6eeb6cbba6b93"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
