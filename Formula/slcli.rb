class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "2.5.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v2.5.3/slcli-macos-15-intel.tar.gz"
      sha256 "e9b7e040c8bb8f957930c55c466dcc22a4079e48373ae79e78d7b4bc6f03a733"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v2.5.3/slcli-macos.tar.gz"
      sha256 "26f42611edc7104da201aeae915db5fc81388cd160564dc0808e2793f27bc649"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v2.5.3/slcli-linux.tar.gz"
    sha256 "aad5afc54c03583dff7f728cfdb2da9baaf813d64a0b0dab09f4ce91a5182b68"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
