class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.26.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.26.1/slcli-macos-15-intel.tar.gz"
      sha256 "6e6babde938a58b24794ff6b97b0dff2c8e76df215a0eceb9d70c3e0ae97d568"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.26.1/slcli-macos.tar.gz"
      sha256 "614433da05d200d5837d2a3e2aff2fa9e1859de132f8ff412bba686dcebaeffe"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.26.1/slcli-linux.tar.gz"
    sha256 "09f5e27922ea76c29471ca4440b73b19d3f32a8b521dd01e6ef6880204a40ce6"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
