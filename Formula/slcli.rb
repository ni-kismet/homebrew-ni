class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.26.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.26.2/slcli-macos-15-intel.tar.gz"
      sha256 "32e1682e80eaef1243723bfc770e9f5aca07e59410e1c37153e8506a0dd16acd"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.26.2/slcli-macos.tar.gz"
      sha256 "e17202c5ff7a883d808bbee3bcfa8cd9936484c0657acad5992942e38492b9d9"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.26.2/slcli-linux.tar.gz"
    sha256 "6b4f03ccd7662c6062812def42235171ad07a59126ec5c2a6446e386c30198e9"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
