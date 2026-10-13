class Moff < Formula
  desc "Agent-first Microsoft 365 CLI"
  homepage "https://github.com/thrashr888/moff"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thrashr888/moff/releases/download/v0.3.0/moff-aarch64-apple-darwin.tar.gz"
      sha256 "02645a1a9d8e0ee72a12e57e44baf0eb0da78f4c9aa16da2be8129052e20efe6"
    else
      url "https://github.com/thrashr888/moff/releases/download/v0.3.0/moff-x86_64-apple-darwin.tar.gz"
      sha256 "2f7efe5a1fc7530d8aaf968ecb7e363a215f53a8460823bbb74dfc07a5d2b15b"
    end
  end

  def install
    bin.install "moff"
  end

  test do
    assert_match "moff", shell_output("#{bin}/moff --help")
  end
end
