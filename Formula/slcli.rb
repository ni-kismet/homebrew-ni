class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.13.9"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.13.9/slcli-macos-15-intel.tar.gz"
      sha256 "8d64e7f26ed8270b85194b17aa4d7d3a0ed872f9054328e689db095c0334eaed"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.13.9/slcli-macos.tar.gz"
      sha256 "86de1ab226b64b8daa7a90c303215767c648b91fc20a15be104c11b3ded31449"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.13.9/slcli-linux.tar.gz"
    sha256 "ee3392fd2ce35f5d4005f59d966309dfe8be73db989c3a24d02d723237f3a800"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
