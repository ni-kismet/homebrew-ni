class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.22.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.22.0/slcli-macos-15-intel.tar.gz"
      sha256 "4b5c9475feef893a88d1e9152a1189074794b308598db797ffe7ae2e7c0d0e8d"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.22.0/slcli-macos.tar.gz"
      sha256 "d12ef58f08369dedff12139258837eaad29bd4181ee5afd0e8ef407a8623c3ff"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.22.0/slcli-linux.tar.gz"
    sha256 "d41e1f5b1f935b37b263cb70e35f1ffe028f953cab2c7e61dfdd5ce33ab64616"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
