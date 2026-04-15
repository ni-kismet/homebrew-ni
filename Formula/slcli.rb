class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.8.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.8.1/slcli-macos-15-intel.tar.gz"
      sha256 "a83ff00477ed5b959bddda0e12e6020a24a8b8faefdbba93f052f8f2672bce63"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.8.1/slcli-macos.tar.gz"
      sha256 "8548688d0c45f0dcf1c33700e5421d62dc414633ed8fca83e21a22cc3c3c80eb"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.8.1/slcli-linux.tar.gz"
    sha256 "4db0a74f654adfbdda6b45cf76dc63d0bc543bcc05da1d69fd7f2b865256e273"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
