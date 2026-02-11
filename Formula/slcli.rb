class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.31.6"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.31.6/slcli-macos-15-intel.tar.gz"
      sha256 "d45de69fd2c79f6f12a81948ac4e44123d80f3c9dd4993ed0f9d33b9a02d1eec"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.31.6/slcli-macos.tar.gz"
      sha256 "b565cbb26b09b14cdfc62ead19f681c55b37e54805b85bc2c04a74237ec62213"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.31.6/slcli-linux.tar.gz"
    sha256 "2a356be507b64b739b755ac35c26adc4f587196f97255b4d77d69b67ab061319"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
