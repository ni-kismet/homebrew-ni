class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "2.2.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v2.2.2/slcli-macos-15-intel.tar.gz"
      sha256 "0a60b4bfe6c0656462ba7fdab3a0f53edbb1ce7c4fb312d8d561fd32b2e23bd5"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v2.2.2/slcli-macos.tar.gz"
      sha256 "c033f17d188c1a05d5238bcbd256f2b440103a652a405f487857a3088a30388e"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v2.2.2/slcli-linux.tar.gz"
    sha256 "06321ae846831833ea99e38a16a9c6db64d1e8f2439260eb427f2fc9d1d58fb8"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
