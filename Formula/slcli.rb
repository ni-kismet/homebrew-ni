class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.13.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.13.2/slcli-macos-15-intel.tar.gz"
      sha256 "73c3cff8d2c6cde1d26f03209943e526893ee62c6f5180997ad015968b02f81a"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.13.2/slcli-macos.tar.gz"
      sha256 "dc49d17efff42dea3d9e194549d2ea85f323e4e2f3a7c33fb7686be672b4e9a4"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.13.2/slcli-linux.tar.gz"
    sha256 "f4f3f2983e5462b713bff4fd3df3d6df8a5dfc944e0ac573de02e95cfba4a055"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
