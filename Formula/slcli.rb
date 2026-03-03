class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.41.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.41.0/slcli-macos-15-intel.tar.gz"
      sha256 "ce3c2fbe9962367a1e06d11c26da7ac6290715a070e3e91bd05dd96008c95c39"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.41.0/slcli-macos.tar.gz"
      sha256 "fd01b0eed519270c6341c6de14fc73508748b9493ddec9b3d491ba05a4fe8c66"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.41.0/slcli-linux.tar.gz"
    sha256 "44e756653b778b4639bffebc0dca6c40947e732f75cd4c2af92f8124a0ec55c1"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
