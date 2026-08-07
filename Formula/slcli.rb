class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.20.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.20.0/slcli-macos-15-intel.tar.gz"
      sha256 "bacf44e3c6cce19547c11ddb3138eb13582bcfff6e8542c7188353cc9cd4468a"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.20.0/slcli-macos.tar.gz"
      sha256 "d204017e7d9d6da6ffd4f71d2ddca52741a94604528f1f6acb9be550ad140b11"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.20.0/slcli-linux.tar.gz"
    sha256 "2abc7334a7d97fac398231f33bb3683baeec371cad37c57cc078d3091846a997"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
