class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "2.3.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v2.3.0/slcli-macos-15-intel.tar.gz"
      sha256 "62494d4e6ae073336b03e515c76443267ce44f73d5b9bd21353aae2b79e2f01a"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v2.3.0/slcli-macos.tar.gz"
      sha256 "01772e8151efedf093daf94e6c9ad82dd172735ddb693921c16b31b05eea2d42"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v2.3.0/slcli-linux.tar.gz"
    sha256 "1252dac9b01bb93ceb158e72403dfd90eb207ea1dc3c7af63c04ce8788e9bfbe"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
