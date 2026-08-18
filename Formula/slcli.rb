class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.23.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.23.0/slcli-macos-15-intel.tar.gz"
      sha256 "00d04f3fb7bff030e62b5a57518048e3734d8fc86082cc789094f359d0cc14e2"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.23.0/slcli-macos.tar.gz"
      sha256 "3e29c4b6c1626ec69c1134a4cc3adcb1fb2061564020685d22cc5304ef382565"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.23.0/slcli-linux.tar.gz"
    sha256 "1c0c9ddc04eadfe7a456c466672478ea7f0b60746b7cef5696f79d6844efc994"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
