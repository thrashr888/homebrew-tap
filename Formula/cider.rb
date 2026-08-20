class Cider < Formula
  desc "Manage macOS Apple apps from the command line"
  homepage "https://github.com/thrashr888/cider"
  version "0.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thrashr888/cider/releases/download/v0.4.1/cider-aarch64-apple-darwin.tar.gz"
      sha256 "789295270df7b57da2b5c9efdfee843e187c020514a32a01c1cfa6214ed764e4"
    else
      url "https://github.com/thrashr888/cider/releases/download/v0.4.1/cider-x86_64-apple-darwin.tar.gz"
      sha256 "ffb1bd73661337872f2ee55c576d66f4cd232d8d176c48382368fc14063b00fa"
    end
  end

  def install
    bin.install "cider"
  end

  test do
    assert_match "cider", shell_output("#{bin}/cider --help")
  end
end

