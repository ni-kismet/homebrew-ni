class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.26.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.26.0/slcli-macos-15-intel.tar.gz"
      sha256 "34c35fda0460a97be0299e3acd84661c555f40afc63be58acd1af7e2ede63892"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.26.0/slcli-macos.tar.gz"
      sha256 "39a15dd234354a0d3ec8b06e3db2ef2637da3e804685efdd9127b235bf26919a"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.26.0/slcli-linux.tar.gz"
    sha256 "dfe511581f5280def86f1fb5fb5cadba0baf6cda1e75d98a16e222ed1b799fe6"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
