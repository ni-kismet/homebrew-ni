class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.2.3"
  license "MIT"

  on_macos do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.2.3/slcli-macos.tar.gz"
    sha256 "80f95c03fe21782816f1df5c644230285f8106f761373f6c666d507283b1d9bf"
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.2.3/slcli-linux.tar.gz"
    sha256 "a7c03287542bad33ab4c338f8dc6bdd0a539b7746ae40e4919bda65c31b5acb8"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
