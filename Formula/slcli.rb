class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.17.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.17.0/slcli-macos-15-intel.tar.gz"
      sha256 "be24ef106974029812745c0551135022dec900a43fce7c5a71c6186817b9ef65"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.17.0/slcli-macos.tar.gz"
      sha256 "5522b8c52b934e649b53aaeb82141d77b94eec667d0659c673cf08dba1256fe5"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.17.0/slcli-linux.tar.gz"
    sha256 "a263f53e2346892daca45c6b1ae5d52a28a9598fcce0baf2c3c490d13bfd7165"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
