class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.17.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.17.4/slcli-macos-15-intel.tar.gz"
      sha256 "2e602ef4479ae7fb2f8b07affdb0222594092ed68ae0714d09b377d80b3b0830"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.17.4/slcli-macos.tar.gz"
      sha256 "71a3f905a574798e57d95b1c84a353951aa88b1aaa2584ba69b609763dc2faa9"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.17.4/slcli-linux.tar.gz"
    sha256 "4d403691dfca25f4212b1fc756542810f3a4ea7fa543e95a4bca5859c33bae06"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
