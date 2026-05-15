class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.13.11"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.13.11/slcli-macos-15-intel.tar.gz"
      sha256 "8d3251ea0d423627ea579230eff98cf88050bc560e0bfc66f39e2af884e06f90"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.13.11/slcli-macos.tar.gz"
      sha256 "fe02d62bcdf7274e304678ead462cde2de42204acfc3815506d31f98f6edd7fb"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.13.11/slcli-linux.tar.gz"
    sha256 "0ef11927ce3b6b15c0a7f85db90444b8ce79d7719dda68c64744a9db542e92d1"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
