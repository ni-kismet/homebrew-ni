class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.18.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.18.1/slcli-macos-15-intel.tar.gz"
      sha256 "f46a2d5c937fb13714c3b8bf4d53aa8fd19410b931743b3e2051d48fbe043c0c"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.18.1/slcli-macos.tar.gz"
      sha256 "94a3b127d2bbf04d2b27f3c538bd5286252ad01f63311efb09d036acb0db8f2b"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.18.1/slcli-linux.tar.gz"
    sha256 "78f0b1d95b3cff41b1621d7aa294a941593ae77212a4753a9884b8bebe09a610"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
