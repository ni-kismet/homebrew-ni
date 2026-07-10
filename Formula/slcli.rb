class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.16.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.16.0/slcli-macos-15-intel.tar.gz"
      sha256 "012221726178ac8d828d8349678d13b1e43b2b61f46c822fce371792d966e5ca"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.16.0/slcli-macos.tar.gz"
      sha256 "9c824454f629413cdd9887df1c0385bcdb383150878f456887a2d8ec87147c1f"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.16.0/slcli-linux.tar.gz"
    sha256 "cfa3784e3b96974b287339f9b9dd8616ae70abe7a918c36fe1dda39b3a0b0988"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
