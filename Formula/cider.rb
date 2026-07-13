class Cider < Formula
  desc "Manage macOS Apple apps from the command line"
  homepage "https://github.com/thrashr888/cider"
  version "0.1.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thrashr888/cider/releases/download/v0.1.8/cider-aarch64-apple-darwin.tar.gz"
      sha256 "62ef698cee7d9d8bbb2ab31cf612492d2bba7f38fc3adf360a3c3c310c3bae2b"
    else
      url "https://github.com/thrashr888/cider/releases/download/v0.1.8/cider-x86_64-apple-darwin.tar.gz"
      sha256 "7ced747da63e75ef802828629d83b088ed20fddb7a00c844846ff6452f3386bf"
    end
  end

  def install
    bin.install "cider"
  end

  test do
    assert_match "cider", shell_output("#{bin}/cider --help")
  end
end

