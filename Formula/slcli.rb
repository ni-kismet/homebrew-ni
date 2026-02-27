class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.35.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.35.0/slcli-macos-15-intel.tar.gz"
      sha256 "f514a1abb177fc8c54a448895f96fe63d3dc9146a3d24a00ef6577e328663e74"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.35.0/slcli-macos.tar.gz"
      sha256 "515b49e2f513fb2f65c9252f342a5c873b292cd2fc2c22e77d58a4ded502905f"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.35.0/slcli-linux.tar.gz"
    sha256 "c725c70d26d6d377485ccd19ac94b98b8f11208e59ed3fd76089c01c844dea9e"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
