class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.37.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.37.2/slcli-macos-15-intel.tar.gz"
      sha256 "bccb6644d6b5889a41988b897dc5e78c50ab37a2528076eb7ee219cfd0201d73"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.37.2/slcli-macos.tar.gz"
      sha256 "359fcc6917dd4b00c222eceb79e79d4a9b5a63640f8ce45ea6f66371b3490e2b"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.37.2/slcli-linux.tar.gz"
    sha256 "3a5756f0f4795e5f8697ca74882c31b135f799dd6fbcb2533ebe070a6e7cebcd"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
