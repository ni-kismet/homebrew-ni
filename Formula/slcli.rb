class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.16.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.16.3/slcli-macos-15-intel.tar.gz"
      sha256 "28bf10bf5b11b0f0c09b3f794ae5a8c1e00b98f98287dfd2a572a9d612231f09"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.16.3/slcli-macos.tar.gz"
      sha256 "7d46598396aab018ef1adf0399723472fc8b6c44383ba258865d6c285e54ab99"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.16.3/slcli-linux.tar.gz"
    sha256 "e8ca71c2ae856c32a4607b4576f950a08371b129257e7cd6630b9749ba726880"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
