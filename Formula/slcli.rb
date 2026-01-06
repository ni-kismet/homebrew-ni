class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.22.1"
  license "MIT"

  on_macos do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.22.1/slcli-macos.tar.gz"
    sha256 "80d3227623c20da80bede9deb58c401bc6f92705c577c6e17dcd6c50320bdba3"
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.22.1/slcli-linux.tar.gz"
    sha256 "b0adc9b8964d68f52225a5bcee90ac1d1900c9e179cd2e0f408b786f35645f17"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
