class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.40.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.40.2/slcli-macos-15-intel.tar.gz"
      sha256 "50887700de980e254ed3f322029fb7c41cc578878dd51a9e3c88e5e6382da3c3"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.40.2/slcli-macos.tar.gz"
      sha256 "4079889063b3b328e67e2b6a8410a56ec984be5da8fb3519e6b72ea48716cc9e"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.40.2/slcli-linux.tar.gz"
    sha256 "13ba7bffabddf7c6ff01e5ac066b9676222c5def5eac6c5c00e82a6c7d98269d"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
