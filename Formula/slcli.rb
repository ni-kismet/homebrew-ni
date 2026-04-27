class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  version "1.11.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.11.4/slcli-macos-15-intel.tar.gz"
      sha256 "31030f66c5451579a1c98adce03e7212167ad80c3da30b7aa3afb630268f1758"
    end

    on_arm do
      url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.11.4/slcli-macos.tar.gz"
      sha256 "f82c1e077bc3a9c1a2bac1c78300eac0be54049210cb78cf4be543c3bff5b336"
    end
  end

  on_linux do
    url "https://github.com/ni-kismet/systemlink-cli/releases/download/v1.11.4/slcli-linux.tar.gz"
    sha256 "34e249bbdfca6d77cc7689d3b9763e70108c0e8e7911bbe1c6374608b9e8ed1d"
  end

  def install
    libexec.install Dir["slcli/*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
