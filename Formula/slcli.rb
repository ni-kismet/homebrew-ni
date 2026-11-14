class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "3.2.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v3.2.1/slcli-macos-15-intel.tar.gz"
      sha256 "57d655565f4b1bf488ee04664b97cb718a1d022c2e1fd089e821379cd23819b6"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v3.2.1/slcli-macos.tar.gz"
      sha256 "8a4d923f1f6d650426409dbee06c2700906e4c9369805fa2375f6e73f5a1f15c"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v3.2.1/slcli-linux.tar.gz"
    sha256 "b9071f5e17030e1c8d14f8b4a461f592af500e04278c8ba2f28075971b1ce21a"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
