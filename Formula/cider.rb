class Cider < Formula
  desc "Manage macOS Apple apps from the command line"
  homepage "https://github.com/thrashr888/cider"
  version "0.6.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thrashr888/cider/releases/download/v0.6.2/cider-aarch64-apple-darwin.tar.gz"
      sha256 "adf170e9bfb2a418db5ea45e935741d16ceda5983b99a103c602f02cdb21ddfa"
    else
      url "https://github.com/thrashr888/cider/releases/download/v0.6.2/cider-x86_64-apple-darwin.tar.gz"
      sha256 "d71b0e7ded7f56b2d3e0ede8e931201da58312b488758900492036e1d2ddc56a"
    end
  end

  def install
    bin.install "cider"
  end

  test do
    assert_match "cider", shell_output("#{bin}/cider --help")
  end
end
