class Moff < Formula
  desc "Agent-first Microsoft 365 CLI"
  homepage "https://github.com/thrashr888/moff"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thrashr888/moff/releases/download/v0.2.0/moff-aarch64-apple-darwin.tar.gz"
      sha256 "fa4504e4925f937a0ee66fa6248b6919538bfed94db6cc536e875c6dbf13b331"
    else
      url "https://github.com/thrashr888/moff/releases/download/v0.2.0/moff-x86_64-apple-darwin.tar.gz"
      sha256 "721a70218fb7dce3398eace4947f21b879da56af0976ec6d783259c6bceaeba4"
    end
  end

  def install
    bin.install "moff"
  end

  test do
    assert_match "moff", shell_output("#{bin}/moff --help")
  end
end
