class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.0.1/slcli-macos-15-intel.tar.gz"
      sha256 "4f53a9289a3af9f8305db6ffc4f8d88d302019e07f1ae383c3065a7b8afff778"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.0.1/slcli-macos.tar.gz"
      sha256 "e26ec1f6014ea1b43a5805b147b166543cdcec645287c853185e5b4e2e18c59b"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.0.1/slcli-linux.tar.gz"
    sha256 "a1b16cca0de4f32345d71cb56d14af57eae33241e9451f0262dc61663cb0b530"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
