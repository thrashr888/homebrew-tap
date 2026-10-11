class Cider < Formula
  desc "Manage macOS Apple apps from the command line"
  homepage "https://github.com/thrashr888/cider"
  version "0.12.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thrashr888/cider/releases/download/v0.12.0/cider-aarch64-apple-darwin.tar.gz"
      sha256 "d26ddd2ae607988faf9e5d9dd296b1d937079358b57a89aad263ec8261f7ee8a"
    else
      url "https://github.com/thrashr888/cider/releases/download/v0.12.0/cider-x86_64-apple-darwin.tar.gz"
      sha256 "78c6e634bb88db3ca7d085794aa7072468b9d115f2c1a3c47d09fd5b62587eb9"
    end
  end

  def install
    bin.install "cider"
  end

  test do
    assert_match "cider", shell_output("#{bin}/cider --help")
  end
end
