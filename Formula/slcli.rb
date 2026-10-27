class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "2.4.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v2.4.3/slcli-macos-15-intel.tar.gz"
      sha256 "a2c91c2cb22a3844cfc3fee0e94ca8ca9aabfa2cd4f9b9cb73b49600bdcc799f"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v2.4.3/slcli-macos.tar.gz"
      sha256 "76286a7e4bedbdb679e3a58662f55a0ce4bbe26b550d5046375bd6ec6b1c1110"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v2.4.3/slcli-linux.tar.gz"
    sha256 "2b58ae32aec65bab43cfce3cf3cc32a188a9ed8d7a3d1c5b01a62386f517f18a"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
