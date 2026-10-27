class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "2.4.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v2.4.4/slcli-macos-15-intel.tar.gz"
      sha256 "3acf9783cb6f1c513bf8034e1ac047c712c4b9ad563b72a8d7e6981f6b20416d"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v2.4.4/slcli-macos.tar.gz"
      sha256 "f24313fe9ff6d4ca19f13312f6746813c9cf75844e5e662a6b12415ad0b4a728"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v2.4.4/slcli-linux.tar.gz"
    sha256 "70419e35b77240428c68f5459b36984769dae4646ecf339cbb3b8492db41d662"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
