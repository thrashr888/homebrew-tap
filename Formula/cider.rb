class Cider < Formula
  desc "Manage macOS Apple apps from the command line"
  homepage "https://github.com/thrashr888/cider"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thrashr888/cider/releases/download/v0.3.0/cider-aarch64-apple-darwin.tar.gz"
      sha256 "c5cd55c580d7941404a40001d4c4e2436f497f7b6323c7a610e0636e6e15bdb2"
    else
      url "https://github.com/thrashr888/cider/releases/download/v0.3.0/cider-x86_64-apple-darwin.tar.gz"
      sha256 "286cadd10c6b3cba6aaf0f29235de78f257b0d57be5638038c5b5e0922633220"
    end
  end

  def install
    bin.install "cider"
  end

  test do
    assert_match "cider", shell_output("#{bin}/cider --help")
  end
end

