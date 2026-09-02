class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.27.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.27.3/slcli-macos-15-intel.tar.gz"
      sha256 "ff8b9bb8ee54b936d2ae7ada96eb39b27e64f85b60ca841c24918ca95e46dc35"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.27.3/slcli-macos.tar.gz"
      sha256 "6f9069b978c06fdd87f5e6cce782ad8c25dae9011c56c7c3e3c110dc2db617d4"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.27.3/slcli-linux.tar.gz"
    sha256 "03602565756e217b2ceee79f769ed8897f33e2b4900fd3c812bba46fb0bafc69"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
