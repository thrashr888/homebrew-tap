class Cider < Formula
  desc "Manage macOS Apple apps from the command line"
  homepage "https://github.com/thrashr888/cider"
  version "0.15.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thrashr888/cider/releases/download/v0.15.0/cider-aarch64-apple-darwin.tar.gz"
      sha256 "de67701c9bd92c39cdf30470549cb80a7edb9674bfda1168d87a2584739ed8fb"
    else
      url "https://github.com/thrashr888/cider/releases/download/v0.15.0/cider-x86_64-apple-darwin.tar.gz"
      sha256 "3884ebebcd26372f4852ed1e68f635219ea382ceea1d323391e19292ce160a39"
    end
  end

  def install
    bin.install "cider"
  end

  test do
    assert_match "cider", shell_output("#{bin}/cider --help")
  end
end
