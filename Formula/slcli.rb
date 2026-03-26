class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.4.8"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.4.8/slcli-macos-15-intel.tar.gz"
      sha256 "38f43a664d22c8515a93cbf22b2ab5759f542006aacda34a27b50272e6f8acbe"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.4.8/slcli-macos.tar.gz"
      sha256 "8af243219eafc9ba80a81555ab7244fdc3463af4f045d233f2d85e84d46270ff"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.4.8/slcli-linux.tar.gz"
    sha256 "d908bbdb06e0914f88b4c7205a2e261638cc0e300c26adbc394cd25eb58853d3"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
