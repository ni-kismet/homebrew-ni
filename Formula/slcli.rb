class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "0.38.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.38.0/slcli-macos-15-intel.tar.gz"
      sha256 "9da2d9b2079cbb74dde81e3915673e7e9c78a7927a47397662748d2abd950907"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.38.0/slcli-macos.tar.gz"
      sha256 "4dd631f5dea51639afa71ebbeb58ccdd4e9133b6ca33ee7aa15fc8096968afd2"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.38.0/slcli-linux.tar.gz"
    sha256 "ed89efe0862a6ecd66b68642e03a59bb4fa9aa603e2826fd603dbea009945eee"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
