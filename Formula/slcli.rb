class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.6.0"
  license "MIT"

  on_macos do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.6.0/slcli-macos.tar.gz"
    sha256 "d87b3a668a47b83fa9c2bbe63e053646667a1be0b64cf522ec6acaeed8fe0911"
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.6.0/slcli-linux.tar.gz"
    sha256 "406106645c1167a4ba716fdfea34a7d1b442c38dfca81d7cf81bc6b5190c22ad"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
