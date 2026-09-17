class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.29.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.29.3/slcli-macos-15-intel.tar.gz"
      sha256 "fcf05b3a006ee3da9955226fb1e83d8035d190e8a4f63183a6b671dac857713b"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.29.3/slcli-macos.tar.gz"
      sha256 "cdf55f46b2826cdd9d17e9cf4516480f507957950e710fc3f0d544030333e6a2"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.29.3/slcli-linux.tar.gz"
    sha256 "9d203256a7842f16f39e07b9bb725a8f57b9d6159324b96f1454a95f570ce142"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
