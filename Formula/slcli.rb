class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "2.4.5"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v2.4.5/slcli-macos-15-intel.tar.gz"
      sha256 "f009ef93c22ebf0db4892e09506ffceaa4f6fe3551793185c8fefd62dd701b90"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v2.4.5/slcli-macos.tar.gz"
      sha256 "77652027976f19e00e25bfa08e888d5871c34a2962037d7005818f7c2d0a7670"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v2.4.5/slcli-linux.tar.gz"
    sha256 "6386b8f4d8316fabc52e8d4e2507dfa1f770486a924b74eb724b0dd35ca399e3"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
