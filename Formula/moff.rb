class Moff < Formula
  desc "Agent-first Microsoft 365 CLI"
  homepage "https://github.com/thrashr888/moff"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thrashr888/moff/releases/download/v0.4.0/moff-aarch64-apple-darwin.tar.gz"
      sha256 "2d4c3177c844794f48c55cc52ed10e1435421b7224a9f10046b9244f3a0402cc"
    else
      url "https://github.com/thrashr888/moff/releases/download/v0.4.0/moff-x86_64-apple-darwin.tar.gz"
      sha256 "3fa724c543bb8d6df1661f5361a8eec6b52114f09ea55c98c6126cb0eb55a0da"
    end
  end

  def install
    bin.install "moff"
  end

  test do
    assert_match "moff", shell_output("#{bin}/moff --help")
  end
end
