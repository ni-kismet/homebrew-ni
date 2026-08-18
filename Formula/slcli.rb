class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.24.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.24.0/slcli-macos-15-intel.tar.gz"
      sha256 "deb0b1ffa78d068771577814ece6db981475e451a428a887c2d5febc60aeb204"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.24.0/slcli-macos.tar.gz"
      sha256 "f62ca879494a9bdac7b9d014c1d7766b228185f757a1800d75ff9e1efdd77efb"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.24.0/slcli-linux.tar.gz"
    sha256 "36aa7cfd25b3f8da362b2511f68a27dfa733596bfed08dbf5d683f3dd847d5fd"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
