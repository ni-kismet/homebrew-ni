class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.5.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.5.2/slcli-macos-15-intel.tar.gz"
      sha256 "899f7071f2925028ec0123405d42255a39671e4bf7094c4f1fbdc9ae33decdf4"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.5.2/slcli-macos.tar.gz"
      sha256 "d7bde6c8b2317d4b4878785d87c360ebc0d79e4d549fbff31167456dd86820c2"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.5.2/slcli-linux.tar.gz"
    sha256 "f6fa6fc98b1877115f22e7dbb0693b6739c150706a40d448f62bc34920b98ed2"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
