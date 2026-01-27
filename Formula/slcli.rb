class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.25.0"
  license "MIT"

  on_macos do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.25.0/slcli-macos.tar.gz"
    sha256 "65da9ab3b00b5d1811ae52d526d17fe24e6a6a84fa14130dc185e4fb59b30ec8"
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.25.0/slcli-linux.tar.gz"
    sha256 "b8d894f1da6f4d323e4ef4464fa3889648bac26d7a902837ff3a59630d754338"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
