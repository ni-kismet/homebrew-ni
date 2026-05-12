class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.13.6"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.13.6/slcli-macos-15-intel.tar.gz"
      sha256 "6c40fc4935c123cca4e51ecf70ab81b4fca2fc8b3f2c11e5ad217a2fab613ec8"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.13.6/slcli-macos.tar.gz"
      sha256 "0a5c0c2aa0395b33fdd27cd7531a844d5ba0d430b6ed067383955ee9d3bca4b1"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.13.6/slcli-linux.tar.gz"
    sha256 "830c246b2bec046bc23569a741b1ec33d6a96e14824459257a43fc85ac2a39b5"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
