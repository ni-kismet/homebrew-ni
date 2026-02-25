class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.32.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.32.0/slcli-macos-15-intel.tar.gz"
      sha256 "7e946a811fe3add10a3c334a825c25fafcde4bee877afc5654eeb873bb4b263a"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.32.0/slcli-macos.tar.gz"
      sha256 "bd7aa68cc8ded53d41834a46d3a645ad36e637165ff238de5a178106f48412c8"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.32.0/slcli-linux.tar.gz"
    sha256 "12f0eb73a4a936dcdf926b958febdb126e65c6ace6ff030c5f8d9d83e64bfeea"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
