class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.4.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.4.4/slcli-macos-15-intel.tar.gz"
      sha256 "bcb1323f2c47774f665fbbdbf9a16077c49f5558b16139ee66c07ba9d4cd8d61"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.4.4/slcli-macos.tar.gz"
      sha256 "a5d1ab7255f0c5294957890d07ea26406a97b024684a08e7a5227177dddcfd2a"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.4.4/slcli-linux.tar.gz"
    sha256 "080075cef9ede27298789ad246c38e9cefa829ed30aa63d1ce194db130d39992"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
