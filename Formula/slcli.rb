class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.17.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.17.3/slcli-macos-15-intel.tar.gz"
      sha256 "ce98ac07a4597780fb231546d569e3a40bc493833afc043ad18596dd1e4bef56"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.17.3/slcli-macos.tar.gz"
      sha256 "f84b0b54998312b9c765b2d5f62c1ffa897d59e4495783525ba492581b032fed"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.17.3/slcli-linux.tar.gz"
    sha256 "39582e85477f2064b2a4384a23cbd288c423031a05193ff631c1f27a6c5d1063"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
