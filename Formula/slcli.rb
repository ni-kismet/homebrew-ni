class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.13.15"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.13.15/slcli-macos-15-intel.tar.gz"
      sha256 "6ab091e9f64016d3d664e2b1cfa354e08548ee4a9ba21a8b3eaf3ff8af02a9d5"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.13.15/slcli-macos.tar.gz"
      sha256 "e6f86f1e909b06240b7811eecab483d2e00857d1bf9bab3094e650471463b075"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.13.15/slcli-linux.tar.gz"
    sha256 "987fe40e62fdc41c0ac1e97eb302d676d4f45424d9ea89d610d1571db00b83e6"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
