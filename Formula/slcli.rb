class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "3.1.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v3.1.1/slcli-macos-15-intel.tar.gz"
      sha256 "7ac5b18fae6597d7ed9e7a3288e76c23baab0ab765f97d111cfa4ec2cbae0b23"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v3.1.1/slcli-macos.tar.gz"
      sha256 "87d223dbb6f841c83f03ba8370654f1d326d30b08cc8e03ce3c7bcec6de8b8c0"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v3.1.1/slcli-linux.tar.gz"
    sha256 "3cf0f12fc6326ebea87c1c52cc274c58e55e9a6162c056d1c84afd19dfe8a938"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
