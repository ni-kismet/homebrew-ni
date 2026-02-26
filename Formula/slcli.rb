class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.34.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.34.0/slcli-macos-15-intel.tar.gz"
      sha256 "a48d62ca2c996b14147efffe978d5061599b0f69b12728d7c149e0261514d00c"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.34.0/slcli-macos.tar.gz"
      sha256 "6925a3d1a6819b9f13f83205c5b192c481e3f7e77026bb28802165d6a670651d"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.34.0/slcli-linux.tar.gz"
    sha256 "51625a542ce3f6fb6c27a1a1a3608e1f76db7a96abf3a664f078335364aa71b4"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
