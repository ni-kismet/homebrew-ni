class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.17.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.17.1/slcli-macos-15-intel.tar.gz"
      sha256 "2f72b932dc651fe0c77e28d8a9a7808cf924e115ebb17774bf884b9a741dfb2f"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.17.1/slcli-macos.tar.gz"
      sha256 "b6ceabde3dd9bb32441f6cb50d9dbb0cf1dd72a941aa59361f4414df1c168ae1"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.17.1/slcli-linux.tar.gz"
    sha256 "0514e3af55edd3a87e7e971e1b3f5d2a5775ea481bea565f175742736ef4aa3f"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
