class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.30.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.30.2/slcli-macos-15-intel.tar.gz"
      sha256 "d2f91d3508515b22e7a33283ed970bf7486d1c161e3cd32f1d87f79cd6492f00"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.30.2/slcli-macos.tar.gz"
      sha256 "986c2babdad387b9abacfdc10355b2119bee206962cd01232cc9edb082a0a23e"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.30.2/slcli-linux.tar.gz"
    sha256 "62e8f2147b6928540580dbe42951d91da13fc440b712a99eced761e3b0680399"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
