class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.16.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.16.1/slcli-macos-15-intel.tar.gz"
      sha256 "80290615591dee5e0caeb96572f07701fa3a01e34180239b00009d17ed21a6ff"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.16.1/slcli-macos.tar.gz"
      sha256 "87d7637cc4f0c1ab43f606683bef598d20cbed0882fc9c415b9fd8488d500fee"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.16.1/slcli-linux.tar.gz"
    sha256 "aa0c2e1627e28fad2b964e5a1cc7769607dae7a8cdfb4c5c0e10e81649b51b7e"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
