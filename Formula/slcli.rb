class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.9.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.9.0/slcli-macos-15-intel.tar.gz"
      sha256 "86a88bb8ec1634fe63b93d571bd6588e7caae618a62a17f1a0543e2c9734c7c4"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.9.0/slcli-macos.tar.gz"
      sha256 "d0a0128649b7ffd701c2f693fb78f1abd93b3a2a3a73ce389033f463c0bd80ee"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.9.0/slcli-linux.tar.gz"
    sha256 "99bd37997ad69bea99d492413718a0f619257dd41e83108e250804267636559a"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
