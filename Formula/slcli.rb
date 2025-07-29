class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.7.1"
  license "MIT"

  on_macos do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.7.1/slcli-macos.tar.gz"
    sha256 "fb37c214784c9e1c48425fa21e133b04b1188fda7753504fcc3063a4f736a493"
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.7.1/slcli-linux.tar.gz"
    sha256 "7473f9468c742e54f0050534396fc58d5805f0029579b7763981010070ba8a14"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
