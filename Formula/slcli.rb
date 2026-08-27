class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.26.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.26.3/slcli-macos-15-intel.tar.gz"
      sha256 "b6678d40c54ce1f21c2136d3f4db276e71bf0c1768b697442420c369a9c2ccaa"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.26.3/slcli-macos.tar.gz"
      sha256 "1a342f2137d170152debff0f46c21964fc2f4d3e919ce3d2157840f28003cb21"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.26.3/slcli-linux.tar.gz"
    sha256 "ed019eda1c636d68b662e72f51d27131d78bdf9d79ff85be93327a684657bc75"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
