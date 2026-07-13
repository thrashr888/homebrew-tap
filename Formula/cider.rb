class Cider < Formula
  desc "Manage macOS Apple apps from the command line"
  homepage "https://github.com/thrashr888/cider"
  version "0.1.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thrashr888/cider/releases/download/v0.1.9/cider-aarch64-apple-darwin.tar.gz"
      sha256 "06388ff49a3bc053e95463b462d6fd7c220a79a64b34d75d0188945d70a497dc"
    else
      url "https://github.com/thrashr888/cider/releases/download/v0.1.9/cider-x86_64-apple-darwin.tar.gz"
      sha256 "8e703faa4268a87d1a80862ba87989e738daf8505e032ad4870170c5f11da2a6"
    end
  end

  def install
    bin.install "cider"
  end

  test do
    assert_match "cider", shell_output("#{bin}/cider --help")
  end
end

