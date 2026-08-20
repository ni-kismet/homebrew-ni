class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.25.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.25.0/slcli-macos-15-intel.tar.gz"
      sha256 "767dbdb6ce4da1aee398a95f5dc0fea73f537a3e48c14042a6c13ea3f1216d36"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.25.0/slcli-macos.tar.gz"
      sha256 "fc666dde972e86d666b1009f7a8b45d21f80d6569fc42947acb57ff290a68cb9"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.25.0/slcli-linux.tar.gz"
    sha256 "43c9b85b5f807df1890bf18334afbbe97d7f52f9b274fae98a4c6cd376844fa4"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
