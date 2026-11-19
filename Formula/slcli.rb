class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "3.3.8"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v3.3.8/slcli-macos-15-intel.tar.gz"
      sha256 "7045e9810e6c44636e05a4184be400ae7ab8eaac8b2976b22796969e74ce9b59"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v3.3.8/slcli-macos.tar.gz"
      sha256 "1f96585627022c782054f63aadf01f17a2854ccb94727fe3c2c8dd470a797965"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v3.3.8/slcli-linux.tar.gz"
    sha256 "b605fe13097131fac9eb8c223a3b3d403dd2151f5980557ba891bb53254b8924"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
