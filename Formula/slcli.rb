class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.29.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.29.4/slcli-macos-15-intel.tar.gz"
      sha256 "2d228106f603b06e36bc7a5166165b476cff144d820ca16543f75630dbf98a1c"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.29.4/slcli-macos.tar.gz"
      sha256 "04d29b75b9c2a4dbae95239d17c6ab24a09ef8746bdf3e163f9c243e1d60f4ac"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.29.4/slcli-linux.tar.gz"
    sha256 "21d2232c4c151f4029fc928d2fd37d75e11ec1de6a687b5db9b4dfbb001ec628"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
