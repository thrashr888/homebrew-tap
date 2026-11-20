class Moff < Formula
  desc "Agent-first Microsoft 365 CLI"
  homepage "https://github.com/thrashr888/moff"
  version "0.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thrashr888/moff/releases/download/v0.8.0/moff-aarch64-apple-darwin.tar.gz"
      sha256 "dd9ab75ebf0c2d45b79d07b79d3c22c48c5545a80dadefb20fc776fb1ecfbfbd"
    else
      url "https://github.com/thrashr888/moff/releases/download/v0.8.0/moff-x86_64-apple-darwin.tar.gz"
      sha256 "340e6c69f08013ce3c163b6809797f31ba73908ec8237d368e1f10173d744480"
    end
  end

  def install
    bin.install "moff"
  end

  test do
    assert_match "moff", shell_output("#{bin}/moff --help")
  end
end
