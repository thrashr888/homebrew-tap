class Cider < Formula
  desc "Manage macOS Apple apps from the command line"
  homepage "https://github.com/thrashr888/cider"
  version "0.1.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thrashr888/cider/releases/download/v0.1.7/cider-aarch64-apple-darwin.tar.gz"
      sha256 "a8e06f60cf8abb616e93dcabc84ce36d8edc6cb744ed897c830d0f77c7dc63c4"
    else
      url "https://github.com/thrashr888/cider/releases/download/v0.1.7/cider-x86_64-apple-darwin.tar.gz"
      sha256 "6f5f1810af89738857767b9fc26778937af9dc4892680853103d11da17b1b95e"
    end
  end

  def install
    bin.install "cider"
  end

  test do
    assert_match "cider", shell_output("#{bin}/cider --help")
  end
end

