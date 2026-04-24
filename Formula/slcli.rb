class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.11.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.11.1/slcli-macos-15-intel.tar.gz"
      sha256 "d95f5fff8b99123ece2697070f84fbc14ef2354fe304392574c82d864d06d3cc"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.11.1/slcli-macos.tar.gz"
      sha256 "bc6d0e8b75ac2040b255c176c805d68388a4e26c26ac3e43f9b4267d78b78e2e"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.11.1/slcli-linux.tar.gz"
    sha256 "b465c5280dbc496bc9dd0f6c2b41c1769b852f798f1ebb6b57edf25e34475203"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
