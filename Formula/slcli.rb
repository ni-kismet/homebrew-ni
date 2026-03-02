class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.39.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.39.0/slcli-macos-15-intel.tar.gz"
      sha256 "486e64742b9eae8e0ff0b951a281abe4931cefba4b83e38d55b7282c2a76ccf7"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.39.0/slcli-macos.tar.gz"
      sha256 "f5014069051a3d92926e60b83bef8440b69571be5d5df6584892cb1cd6d269fb"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.39.0/slcli-linux.tar.gz"
    sha256 "4bd0d9cf092f3b4526fbef3c4a211ca053997bf942c9d95ee02a22a6cd5c8ecb"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
