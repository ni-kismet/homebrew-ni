class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "3.3.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v3.3.0/slcli-macos-15-intel.tar.gz"
      sha256 "5f2927d32a707d07902e5c0ff4b440f72a751de8bdda8a7128d49695ab6f3328"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v3.3.0/slcli-macos.tar.gz"
      sha256 "c37fadcaeb22a16aa5cd2d4cff077954c5e3b7ad638e819e2a8fc695e68801dc"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v3.3.0/slcli-linux.tar.gz"
    sha256 "72690b807be5197fd6efff8be7bc1cb2060cd205a53be694fd587617dd2b3fa5"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
