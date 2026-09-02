class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.27.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.27.4/slcli-macos-15-intel.tar.gz"
      sha256 "a38092cb0aa23435d57810a29c8b7be8f74e7fea101f81a16e4e5769db85160f"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.27.4/slcli-macos.tar.gz"
      sha256 "a53441eb11299901855b6b9cb162c26ba754d14478465ddf4fe7f40cd063f2c2"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.27.4/slcli-linux.tar.gz"
    sha256 "6273c28f9fbbc59ae205e15cfab9088a37844544a20c2967e19eafe0fd8babc1"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
