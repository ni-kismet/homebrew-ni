class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.3.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.3.0/slcli-macos-15-intel.tar.gz"
      sha256 "baaa4986e7f8ba2ab84cce8569621e8c6d32d9d46d03241a47258d15ba775de1"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.3.0/slcli-macos.tar.gz"
      sha256 "e59563ce35285127f8f428d28a1e926fa73e9a1c70cf5da58e343a2f434afd3e"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.3.0/slcli-linux.tar.gz"
    sha256 "a9f9ea9139bb0d9a57f7722b65a2dfc9ae652ff10c3b2311b30ba99a41849e77"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
