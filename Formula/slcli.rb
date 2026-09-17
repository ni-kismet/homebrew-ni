class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.28.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.28.1/slcli-macos-15-intel.tar.gz"
      sha256 "2f6c5ed64d8f833a82dc44a86dec55e834a0ad6ce4265fc9191b9e43ec15b676"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.28.1/slcli-macos.tar.gz"
      sha256 "c502d62cba908314ea10c819cc3d8f767cd6c043ba886942015a6089c686b4ab"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.28.1/slcli-linux.tar.gz"
    sha256 "74d8094dd61bc7fffabbc767a3b93210d4579ec6440f7f2d5f8b0b442db7dc26"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
