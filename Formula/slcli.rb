class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.1.0/slcli-macos-15-intel.tar.gz"
      sha256 "6dddcdc0742863edfcc407d26c576bd44ff419234adeebe8f19c8d5355ec0a24"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.1.0/slcli-macos.tar.gz"
      sha256 "4421f57c00d2d7fe02e412bcabba41f4b93da3d83bf9f613f7e98e9a36b45fb0"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.1.0/slcli-linux.tar.gz"
    sha256 "5a82666f66a335afe392e8864eb81259e27a3d18754bc1a2356757d0fdf60df8"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
