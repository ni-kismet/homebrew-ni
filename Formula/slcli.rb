class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.13.7"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.13.7/slcli-macos-15-intel.tar.gz"
      sha256 "e3d4bd2e71ca8c089333d691bc84d6ef3f89a6632438d2d1025b1b96f3e45ac2"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.13.7/slcli-macos.tar.gz"
      sha256 "3942e982bd5a659891bdf1a2f536cc7c86f902315bfa6644e56d95f591db4373"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.13.7/slcli-linux.tar.gz"
    sha256 "124db9b4df407c7108b76ac76f22c51282683fba1b6105a7b0de586f5088218e"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
