class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.36.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.36.0/slcli-macos-15-intel.tar.gz"
      sha256 "3cd03164e294c3b2b05b52ded7e66244397b6623c4f2bf9b01753987a491b4d5"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.36.0/slcli-macos.tar.gz"
      sha256 "56b63003134617c058d905d498c6ecba760f436e54535b8115921752a3044576"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.36.0/slcli-linux.tar.gz"
    sha256 "48e4f2c8c8cf0758e35c014a44120d6165027e13bdf5303356e2dedae38f22e8"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
