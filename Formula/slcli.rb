class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.17.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.17.2/slcli-macos-15-intel.tar.gz"
      sha256 "307ecd9646d0909b508c36618469ce04275d63154cce1be43cac0e827cd84120"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.17.2/slcli-macos.tar.gz"
      sha256 "1eb9fbc9aeb1af53a92e7d5b62ab64c900a3003b9ca7b4c5a7bd3d6e050275df"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.17.2/slcli-linux.tar.gz"
    sha256 "509ff36a6c600ba88ebc98ab89245ab8b28423d7505c3aa46a3d11ce48fc13d2"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
