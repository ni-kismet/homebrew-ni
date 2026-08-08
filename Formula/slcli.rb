class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.21.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.21.0/slcli-macos-15-intel.tar.gz"
      sha256 "fbd0f544302fb43788e63b1f16af030a0e13683d1ecac036c8a02e58491e5e88"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.21.0/slcli-macos.tar.gz"
      sha256 "7a95bd78d328acd001470e47ab2823afc4ad91b7cbcda3cdf06cc941fe1d4515"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.21.0/slcli-linux.tar.gz"
    sha256 "4e1fd9328387383dfd48d3db11c72fac2b77d2221daa4b8bfe121a54c1e9b590"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
