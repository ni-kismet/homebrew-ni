class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.0.0/slcli-macos-15-intel.tar.gz"
      sha256 "78c76dc01f17b87bdd85c8c5ca8479a48a0d270e62e710d780ad6dd1d2677166"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.0.0/slcli-macos.tar.gz"
      sha256 "07bf125e3e948521881f99ce4c9bcf32fea42df353afeac67b51174c4b2d3973"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.0.0/slcli-linux.tar.gz"
    sha256 "4d92a1f2ddc34494a9bf83c00983634d92390893afd3e39215d5528d682d975b"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
