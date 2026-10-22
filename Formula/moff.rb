class Moff < Formula
  desc "Agent-first Microsoft 365 CLI"
  homepage "https://github.com/thrashr888/moff"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thrashr888/moff/releases/download/v0.5.0/moff-aarch64-apple-darwin.tar.gz"
      sha256 "298f8a9e8734866286a6a0336786ce341e80334ecc14632953139c7fadcc0810"
    else
      url "https://github.com/thrashr888/moff/releases/download/v0.5.0/moff-x86_64-apple-darwin.tar.gz"
      sha256 "25506fe23adbf10c1df11dba0cf17d743368a0e110dfceb0a35e4a728f826abe"
    end
  end

  def install
    bin.install "moff"
  end

  test do
    assert_match "moff", shell_output("#{bin}/moff --help")
  end
end
