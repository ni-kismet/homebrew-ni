class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.4.6"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.4.6/slcli-macos-15-intel.tar.gz"
      sha256 "ef236938f8d05be675325cefce22f67cc1757fefe713e44f79271754ee25bf1e"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.4.6/slcli-macos.tar.gz"
      sha256 "6825ff65bac5e7d8fed55c86ff1bd3453a7e0ad5bac640cde11c1bba46f7be77"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.4.6/slcli-linux.tar.gz"
    sha256 "ea011ef465075486f19015bbbc7b44ea545b0faea47b6c3d12d1064007723091"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
