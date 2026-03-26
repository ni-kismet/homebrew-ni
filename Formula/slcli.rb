class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.4.7"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.4.7/slcli-macos-15-intel.tar.gz"
      sha256 "92e0a67154546e58285604726ab2fc163ad7782491dea26fef30b3b6a0d8588b"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.4.7/slcli-macos.tar.gz"
      sha256 "9b30808398336ae520b18c398947bfdee27b2fb72d90727b55ca5c7df6171b53"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.4.7/slcli-linux.tar.gz"
    sha256 "9cae08bbfbe7fb903447f97bc62e42790e7a6c11c38f0bf15ebdd8a2054ba828"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
