class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "3.3.6"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v3.3.6/slcli-macos-15-intel.tar.gz"
      sha256 "a9da1b3733a6f49212c83ac0211da2eb1523df2c0e210c0cf67e691f61ca1644"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v3.3.6/slcli-macos.tar.gz"
      sha256 "79a4e6c54c14189d9a16e7cf1ec63366724a6bfc1975000da6078c85c9142904"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v3.3.6/slcli-linux.tar.gz"
    sha256 "ac09422d2e2a4c45fa031052f91e32d298dd523cf0af68148e66f61e2940636f"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
