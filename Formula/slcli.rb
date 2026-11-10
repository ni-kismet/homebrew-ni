class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "3.0.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v3.0.1/slcli-macos-15-intel.tar.gz"
      sha256 "e7f6c5bfd30c1df84ffb6b9a0632573f24877e1d410dba133521da1335f08ca1"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v3.0.1/slcli-macos.tar.gz"
      sha256 "819f4a017f9895d75a6ba650fdeb76c3bc1923c7da6b2f1f29d899b1272203e9"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v3.0.1/slcli-linux.tar.gz"
    sha256 "616d43abe32ec809cd6534355e2edb48c925a96375955b42c542cdeff72d6ed7"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
