class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.7.6"
  license "MIT"

  on_macos do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.7.6/slcli-macos.tar.gz"
    sha256 "6e10749bfc9a5eafdd39c4268c13ee9cb00920dcdaaa8bb703a767383bfd36bd"
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.7.6/slcli-linux.tar.gz"
    sha256 "96443550b2f8caa9bed13ceab6b2661f8f5cc41103e7d44f1a016530b648a906"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
