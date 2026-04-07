class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.6.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.6.2/slcli-macos-15-intel.tar.gz"
      sha256 "f93afba3bb62052b9cbb9b8ae64bb802015ecf01caf6280b4aa125f0a98d92b9"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.6.2/slcli-macos.tar.gz"
      sha256 "af1222be81302c19b8207a4dd846b982be122c8a184739451999cabf5d91b4a1"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.6.2/slcli-linux.tar.gz"
    sha256 "757d81165f793548731d3af35e9780001ef300685d0785c9c23e826604425c01"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
