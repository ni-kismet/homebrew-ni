class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.6.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.6.3/slcli-macos-15-intel.tar.gz"
      sha256 "cf8f518321a9aaa2405ca3e183c723b290f7ee202466e06afb510746426da8a7"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.6.3/slcli-macos.tar.gz"
      sha256 "05925613703e512ef8b8bf90deba935fa84b1263ad04108a3af84f67cf22cb33"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.6.3/slcli-linux.tar.gz"
    sha256 "ec8494f9ae3b8ce28c6d35f82a6cf9799bf2a1f12836ab8bb5a4cdf0b285225d"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
