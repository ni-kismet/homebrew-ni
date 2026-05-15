class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.13.12"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.13.12/slcli-macos-15-intel.tar.gz"
      sha256 "f734420a4177c7097ffb803ae45e8c959496bdbbea8020a4aef9072c5b94523e"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.13.12/slcli-macos.tar.gz"
      sha256 "e3bb02682ab1664d5e63c89e82ad61d5506de8c293b468bada577efae2c7b152"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.13.12/slcli-linux.tar.gz"
    sha256 "0aa1d9e47db3f0d00ab6c04783edb2af49f471fcd2f0320e75532f4b955ea3b1"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
