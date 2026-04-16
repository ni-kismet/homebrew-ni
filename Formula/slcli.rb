class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.9.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.9.2/slcli-macos-15-intel.tar.gz"
      sha256 "c049bfb5c089f3639767b9f7b3804c3640673ecbe4e435457b70ef0fe7a76aa3"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.9.2/slcli-macos.tar.gz"
      sha256 "febeea9fbf8df6bbaad1650a93d422690cf9c08825111721e5f08affd9cb6d83"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.9.2/slcli-linux.tar.gz"
    sha256 "563cdb5f31d19052fcdb7fbf2e4326807a546134fc229b637a94dd2142c3ecd8"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
