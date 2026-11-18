class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "3.3.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v3.3.2/slcli-macos-15-intel.tar.gz"
      sha256 "0966a11210cb0d4dfd41bebbad1f34dbb8e1f9546d31a29edb00d52d7a5379a6"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v3.3.2/slcli-macos.tar.gz"
      sha256 "1b8165f75d1cb6b804641ccb0d0e15fc666ff5476de47e193f676c34e0b41776"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v3.3.2/slcli-linux.tar.gz"
    sha256 "f7950baf5cb4896d9c1c2fb15781f7d8f77c7e2c92a2282eda4768553774dba3"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
