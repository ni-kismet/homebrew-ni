class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "2.5.5"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v2.5.5/slcli-macos-15-intel.tar.gz"
      sha256 "e9cb15c39561f286aa194e04f64a20fab7dbb4ec9a5e6165f737c168d112871e"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v2.5.5/slcli-macos.tar.gz"
      sha256 "1c5575558eaa3165285e84fa20a17a56af29e63fc468dd08f35f66ea22c06c04"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v2.5.5/slcli-linux.tar.gz"
    sha256 "9e56ed1661dc7a74b488ab24c79c9c0d83a20b352fc85f4aaa67ab8aad70ece2"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
