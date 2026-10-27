class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "2.5.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v2.5.2/slcli-macos-15-intel.tar.gz"
      sha256 "b7ca6d2877cf6b8b435a958939fadabad4e706a272ca42ad85ffa4acb3eaa1e2"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v2.5.2/slcli-macos.tar.gz"
      sha256 "5c86c6b89a011850e38a9e2f3103dfa95dcce72fbba50cd41533a9b1186b1be2"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v2.5.2/slcli-linux.tar.gz"
    sha256 "9f00e1be017b1e925031c15bab8c42ca30763da7538ad378707597cf723441d3"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
