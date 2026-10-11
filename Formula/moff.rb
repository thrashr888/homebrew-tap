class Moff < Formula
  desc "Agent-first Microsoft 365 CLI"
  homepage "https://github.com/thrashr888/moff"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thrashr888/moff/releases/download/v0.1.0/moff-aarch64-apple-darwin.tar.gz"
      sha256 "008fb7eb90f438d58867b38842999cddb327d85dafd555cdda426fe9035c54c0"
    else
      url "https://github.com/thrashr888/moff/releases/download/v0.1.0/moff-x86_64-apple-darwin.tar.gz"
      sha256 "c89250fee989421a55990bd8f97a38dc226cd9a4e268adf8909bc1ad1ebab26e"
    end
  end

  def install
    bin.install "moff"
  end

  test do
    assert_match "moff", shell_output("#{bin}/moff --help")
  end
end
