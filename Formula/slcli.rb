class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.9.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.9.4/slcli-macos-15-intel.tar.gz"
      sha256 "e98be9208e969980405e479ecbca5c8341427251fe11fffdb96043ea054cec2f"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.9.4/slcli-macos.tar.gz"
      sha256 "f3d1bfcb7e5ab3ddee2077690ceef64daff97a3ae3238219a2fff3a797a1e2fa"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.9.4/slcli-linux.tar.gz"
    sha256 "0f5ff665b06a9e20fd83e1aafa8c70eb8cec85ab78ecbb1bf8daba5663042217"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
