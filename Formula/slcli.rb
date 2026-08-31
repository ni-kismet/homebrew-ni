class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.27.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.27.1/slcli-macos-15-intel.tar.gz"
      sha256 "4962f4d2f77897c0b21936d053f60b0e8d74b35e467fb91cbc3d85d023e72859"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.27.1/slcli-macos.tar.gz"
      sha256 "92f9016433d373af9bf4f4c907190660ba0cae5c252f8e9e305337b91f2ac65d"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.27.1/slcli-linux.tar.gz"
    sha256 "9db9ee07e69a618e3e7cbf0643fdc374108f8e8f6fd38392ceca655fe067586e"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
