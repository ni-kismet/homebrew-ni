class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.5.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.5.1/slcli-macos-15-intel.tar.gz"
      sha256 "70ea1cac74702488601ae17834100383ddc0fdc27adc9c77d8111ae6ef9ccaf3"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.5.1/slcli-macos.tar.gz"
      sha256 "e530f2a3e2de79fe1529e6d287fd50efc5f49ca9ad35981ec28dcc184eb9700b"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.5.1/slcli-linux.tar.gz"
    sha256 "54f66a8f83292b8d310bb5083a0d5c3e77500b838cf617b85635879566074231"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
