class Cider < Formula
  desc "Manage macOS Apple apps from the command line"
  homepage "https://github.com/thrashr888/cider"
  version "0.13.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thrashr888/cider/releases/download/v0.13.1/cider-aarch64-apple-darwin.tar.gz"
      sha256 "e8659cc1df866b2711381b0d235924ac96511bd3609aa40b931d4718e793fe92"
    else
      url "https://github.com/thrashr888/cider/releases/download/v0.13.1/cider-x86_64-apple-darwin.tar.gz"
      sha256 "50e2a794c1a397b239f3442f6c0807ed3d48f045a2ed8d8ca6e10569696ee4cd"
    end
  end

  def install
    bin.install "cider"
  end

  test do
    assert_match "cider", shell_output("#{bin}/cider --help")
  end
end
