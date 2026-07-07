class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.15.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.15.1/slcli-macos-15-intel.tar.gz"
      sha256 "8a4b011393a969d6254b6ff91b364c1743ba91e449dc00afcd349c29e6202b47"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.15.1/slcli-macos.tar.gz"
      sha256 "35d126299fea5b53b0792d4ff84f59db36520ac2f6685e71e497b788d06be218"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.15.1/slcli-linux.tar.gz"
    sha256 "b306b51a7a10a82f9a4fed58537f71f7321e88cc8a0a457f2943f26d4cd6fb1b"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
