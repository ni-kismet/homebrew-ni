class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.27.5"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.27.5/slcli-macos-15-intel.tar.gz"
      sha256 "dd372123306911d9bea3ab2a45ce4fa1072939c0ac74834fa25e51ebeea965b8"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.27.5/slcli-macos.tar.gz"
      sha256 "51dea2be0cdbf38a9703cdf6a0d5a180d410726734e7b8b12b2647f03aa05504"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.27.5/slcli-linux.tar.gz"
    sha256 "00683db8413c52bffcd75b039039b593e524c5058930092866db9430d1b44220"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
