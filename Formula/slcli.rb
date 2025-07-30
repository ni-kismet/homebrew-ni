class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.7.3"
  license "MIT"

  on_macos do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.7.3/slcli-macos.tar.gz"
    sha256 "40b5f2c89641019fc1058233862a537619ab126646205e5e446b0434eec3b930"
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.7.3/slcli-linux.tar.gz"
    sha256 "c8bc9febfd074e8b74264e85a95ca86fee0ecca37145112129782a626012f624"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
