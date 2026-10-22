class Moff < Formula
  desc "Agent-first Microsoft 365 CLI"
  homepage "https://github.com/thrashr888/moff"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thrashr888/moff/releases/download/v0.6.0/moff-aarch64-apple-darwin.tar.gz"
      sha256 "42bd1765e5c538d41150bcd98fe63351de9ca5940190e91177f808aec330113d"
    else
      url "https://github.com/thrashr888/moff/releases/download/v0.6.0/moff-x86_64-apple-darwin.tar.gz"
      sha256 "7ee19d661c3200f87904e716c439940dff70747428478607fde92daa8979b099"
    end
  end

  def install
    bin.install "moff"
  end

  test do
    assert_match "moff", shell_output("#{bin}/moff --help")
  end
end
