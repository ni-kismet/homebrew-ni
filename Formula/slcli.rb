class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.24.2"
  license "MIT"

  on_macos do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.24.2/slcli-macos.tar.gz"
    sha256 "14e592d09f8e55d113d45a2d185e628cccb62a676a6882e49e62b2e78ee9c978"
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.24.2/slcli-linux.tar.gz"
    sha256 "f16e036211c8d8e8e0b3a39c92cd3516927cd682fdd5344c4ab224d4d2a866d2"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
