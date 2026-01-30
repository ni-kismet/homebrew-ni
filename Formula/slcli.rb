class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.27.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.27.1/slcli-macos-15-intel.tar.gz"
      sha256 "f524fe9197f95fed1755eda8a590777f3f77e993d35b05f2761b324dc40fd42b"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.27.1/slcli-macos.tar.gz"
      sha256 "9f11c470f9e501c863ee75910ec357bebb4cc423d8caed70b2bee68298b88cf2"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.27.1/slcli-linux.tar.gz"
    sha256 "3be2b8f9f7c6d7670f7f5885488a7b603ab63e254eae5a4ee8797dcf5af0a152"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
