class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.40.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.40.0/slcli-macos-15-intel.tar.gz"
      sha256 "347f2ef764734cdfa986b122df8418597dda175ffa18f654413371106783a2cf"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.40.0/slcli-macos.tar.gz"
      sha256 "ceb8f1080d13fba99b5ec08d931a664a2a99aa128171fcee19c6532bfef9e6f8"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.40.0/slcli-linux.tar.gz"
    sha256 "cbd00bab8a1c9a1e976475a55117217539fbc15bcf67e9101028963370b36540"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
