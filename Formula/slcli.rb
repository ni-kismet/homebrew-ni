class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.16.0"
  license "MIT"

  on_macos do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.16.0/slcli-macos.tar.gz"
    sha256 "750848bdb85dfad45ba8acd986492bba30de38d1ba52a62c42c511052b1aef69"
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.16.0/slcli-linux.tar.gz"
    sha256 "6ca8a00f50bc3ceedc5456ba8498db8ea3521fc290723f4722cdcc79fde67697"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
