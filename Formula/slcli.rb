class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "2.5.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v2.5.4/slcli-macos-15-intel.tar.gz"
      sha256 "872e247b52a3cf2ea9834a065876c5e2a3ef82e8e0a35d7eefab06ff622ce062"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v2.5.4/slcli-macos.tar.gz"
      sha256 "f78a9af168c1961cf1fa8cc4fabf41f67e9626033dd81fd7ff574ec604c22b54"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v2.5.4/slcli-linux.tar.gz"
    sha256 "22dc72e4315ee0384dc54b0436ba1bea7b9098ac3bb5319dfb8dc5d34b09382c"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
