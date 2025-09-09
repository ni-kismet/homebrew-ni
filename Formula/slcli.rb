class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.11.0"
  license "MIT"

  on_macos do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.11.0/slcli-macos.tar.gz"
    sha256 "c23c8673cbd9b96fc3a25234c78b21ec17158d68244ab9532bafdc724ece322e"
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.11.0/slcli-linux.tar.gz"
    sha256 "691b4469a5816c058be751ca374d8157af96dc42fa96bb27714319c15acf9923"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
