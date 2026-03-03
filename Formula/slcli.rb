class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.40.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.40.1/slcli-macos-15-intel.tar.gz"
      sha256 "4a7bd6d30f9ebf1bc130d3e2677e9338e0b15b84fc9fa2b5e80e7658eafab035"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.40.1/slcli-macos.tar.gz"
      sha256 "180019c216e863d7bd89ae84fccff397fa4071af72d81c50663d94aa94025faf"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.40.1/slcli-linux.tar.gz"
    sha256 "cb0d99f06e35d08ce72f780b5cbaa64d3f0eb34ed5689b293e02dd7990c6401b"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
