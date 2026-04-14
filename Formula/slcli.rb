class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.7.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.7.0/slcli-macos-15-intel.tar.gz"
      sha256 "0cb188483561d9571d40d501bd2a0a435000601349f329ae41df455033c0ad54"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.7.0/slcli-macos.tar.gz"
      sha256 "6563037dfa634558dfd60bb6b13112451546d915765778e1e5df62c826928465"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.7.0/slcli-linux.tar.gz"
    sha256 "f5be1c48a620fb4a6340ada379c44187770b668a996e774f0a69420ee2031824"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
