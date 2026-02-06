class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.28.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.28.0/slcli-macos-15-intel.tar.gz"
      sha256 "78758c9e89b781593ff341073ed639c748219a0534357ac05507e5c6f050f0c1"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.28.0/slcli-macos.tar.gz"
      sha256 "5a2f9d8339003a34680b84914d23527ff83f56137ed0d15b201322baaa113af7"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.28.0/slcli-linux.tar.gz"
    sha256 "eabf9bb8c355f2732f0fb943163afb6572105928181767c3775f3a4c18c14c43"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
