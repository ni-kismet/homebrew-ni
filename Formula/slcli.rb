class Slcli < Formula
  desc "SystemLink Integrator CLI: Manage SystemLink test plan templates and workflows"
  homepage "https://github.com/ni-kismet/systemlink-cli"
  url "https://github.com/ni-kismet/systemlink-cli/releases/download/v0.2.1/homebrew-slcli.rb"
  version "0.2.1"
  sha256 "c5f8e23b85ddb68197a833f8df550a210f75dfc1ee6c4dad4e8dc449376d980a"
  license "MIT"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"slcli"
  end

  test do
    system "#{bin}/slcli", "--help"
  end
end
