class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.27.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.27.2/slcli-macos-15-intel.tar.gz"
      sha256 "a39b1fe8ff579201a26a990438375eb8cff6ea570714aeba90c762b0aadfdce8"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.27.2/slcli-macos.tar.gz"
      sha256 "d80081d12107ca26204df19016aaf48f9849b0dafe5c353a87cac7f05f481a21"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.27.2/slcli-linux.tar.gz"
    sha256 "fcdd9ea07d29a3f91d54101081840e64807c9b5db13d57f6bd2e208974a1a083"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
