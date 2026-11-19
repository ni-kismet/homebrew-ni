class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "3.3.7"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v3.3.7/slcli-macos-15-intel.tar.gz"
      sha256 "f7f4c26387b20b5825bacb31945bc19e0ff74f58e9b3a477b08e634106e33e66"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v3.3.7/slcli-macos.tar.gz"
      sha256 "390a76a81403405015c54febaeff2afc3fa5d5d6eb397bb7c0308b75965de632"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v3.3.7/slcli-linux.tar.gz"
    sha256 "17a49bf1ba8814efd001f669cd9a936639d59b3b93116d1374ec3221ee176157"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
