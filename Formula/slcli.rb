class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.11.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.11.2/slcli-macos-15-intel.tar.gz"
      sha256 "ce826b8d8960d95f2fe31f6bfbde8c040fa33762e75e8ab0d0e3f47dad5f2f5a"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.11.2/slcli-macos.tar.gz"
      sha256 "317712190fe8188efecb3aa312d55d81fd2eff340b239ae951479b25863369b5"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.11.2/slcli-linux.tar.gz"
    sha256 "00de506d2565843026036144e8f3eca79a3692312de5f005db1e7380d484384b"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
