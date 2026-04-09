class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.6.5"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.6.5/slcli-macos-15-intel.tar.gz"
      sha256 "6412f576cdb9bfc12f7681b89bcc0ef15094a2848ab46836c9661f0d38aba40e"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.6.5/slcli-macos.tar.gz"
      sha256 "211ecbc1e5f631cec34c93b2ea2ad4ca15285b23720c21e77290c4d1a1c77777"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.6.5/slcli-linux.tar.gz"
    sha256 "b0cbdc754876fac42d7d2557b3ae13cfdcadac89c5e0c4ab1d1cd660d98cfd23"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
