class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.9.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.9.1/slcli-macos-15-intel.tar.gz"
      sha256 "e4f65728dfcc908308f43b13d436d20644d854685af6318a0e733bf1665fceff"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.9.1/slcli-macos.tar.gz"
      sha256 "aae63117db09465f7717bb783d8532ea105cd3b22352e2aa524470dde818fc11"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.9.1/slcli-linux.tar.gz"
    sha256 "64588b749f128d124dac000bc338c23d4fd6b84074764f79568b94fae4df075d"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
