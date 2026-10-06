class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "2.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v2.1.0/slcli-macos-15-intel.tar.gz"
      sha256 "2d13159a5548b2b5935bb79417381450faf802fde59622d25fd26c50108847bc"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v2.1.0/slcli-macos.tar.gz"
      sha256 "8ddc7ac41d82416a6f46f992101f0db2640246affac6cb1e6b0f3bea314cadad"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v2.1.0/slcli-linux.tar.gz"
    sha256 "47b5c4eb7d90140295f6224608908347ecee7b34103e368c223392a9f878b860"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
