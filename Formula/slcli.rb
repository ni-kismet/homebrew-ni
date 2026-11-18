class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "3.3.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v3.3.1/slcli-macos-15-intel.tar.gz"
      sha256 "d57194b1de68541c5de0fe3311b1615eba6aaab0c25b27abcd61e93bbd955a37"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v3.3.1/slcli-macos.tar.gz"
      sha256 "c4b64e11305d3e9357be887041db63951078242fe16ae02827b9d02ed277a782"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v3.3.1/slcli-linux.tar.gz"
    sha256 "20a62bc5b12f9355e0896b9adcf8a5b25ed4f45db133a83abbe9c6d70f40d368"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
