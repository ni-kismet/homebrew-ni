class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.11.2"
  license "MIT"

  on_macos do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.11.2/slcli-macos.tar.gz"
    sha256 "2911b13876c568e4b1dc819b9e47ae01a8f9655d70750d36198c2415abd9aafe"
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.11.2/slcli-linux.tar.gz"
    sha256 "b21e882dd5996f98ade28e6bb555084a1023d00ed91860a4c3e624a8f196b89d"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
