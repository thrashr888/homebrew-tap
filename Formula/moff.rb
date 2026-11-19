class Moff < Formula
  desc "Agent-first Microsoft 365 CLI"
  homepage "https://github.com/thrashr888/moff"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thrashr888/moff/releases/download/v0.7.0/moff-aarch64-apple-darwin.tar.gz"
      sha256 "4fed7ecab40b13b1c6176699df9e80f148fa794ff28cb16da2dc2db9dbc86dbb"
    else
      url "https://github.com/thrashr888/moff/releases/download/v0.7.0/moff-x86_64-apple-darwin.tar.gz"
      sha256 "6ebabe23e6eaa6040a53d5e7c32f0d8b987bfb23b2247efad3fe857a5fe82f8f"
    end
  end

  def install
    bin.install "moff"
  end

  test do
    assert_match "moff", shell_output("#{bin}/moff --help")
  end
end
