class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.24.1"
  license "MIT"

  on_macos do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.24.1/slcli-macos.tar.gz"
    sha256 "a8183c51dbbaf9ac745bdedae479f58ae25c722edf6f4f7778a50d33a5b7ea52"
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.24.1/slcli-linux.tar.gz"
    sha256 "492148e8fed696a1b933ff60faebfc710a1a34ce9c7e7e38e940c809b88c1192"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
