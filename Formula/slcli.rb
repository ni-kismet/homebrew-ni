class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.22.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.22.1/slcli-macos-15-intel.tar.gz"
      sha256 "788d3eebe5970423952451e7b2edf2b939c05dd06288880c342990b3b32e42f5"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.22.1/slcli-macos.tar.gz"
      sha256 "4d3f081db65015a1874bad55c025ab808947a7bbd77a22aaf0bee3904ae8f2fe"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.22.1/slcli-linux.tar.gz"
    sha256 "3bb480cdb4783541e53b753d3c4f2d55263b1c2b32f9ba3cd8b9f844fa617c30"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
