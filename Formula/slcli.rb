class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.12.2"
  license "MIT"

  on_macos do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.12.2/slcli-macos.tar.gz"
    sha256 "edb9915d1f59e97c7f47d108b1e6efadc91403f7f0a90e5a671601ada37d4dc3"
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.12.2/slcli-linux.tar.gz"
    sha256 "ab798c89bf87095515dfe752ee31e1a7e0ec0ce810914ef6efe831717ae67fb3"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
