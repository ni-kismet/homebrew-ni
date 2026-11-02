class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "2.5.7"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v2.5.7/slcli-macos-15-intel.tar.gz"
      sha256 "4b5133560cb23fa160b09e49de20c890515fe5a6684096009e9a0a7c0117d7e2"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v2.5.7/slcli-macos.tar.gz"
      sha256 "db13c827594fd9727f766a0439e157e225dfae20296b0c830470b56ce4477b5e"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v2.5.7/slcli-linux.tar.gz"
    sha256 "6e601546998eb358a0b62edb8a3533667f14c5ba1349b96b3dc706263566f5da"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
