class Moff < Formula
  desc "Agent-first Microsoft 365 CLI"
  homepage "https://github.com/thrashr888/moff"
  version "0.6.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thrashr888/moff/releases/download/v0.6.2/moff-aarch64-apple-darwin.tar.gz"
      sha256 "6d6e33f679440609284a597556971915719654a64fc212daf81cae72698e1658"
    else
      url "https://github.com/thrashr888/moff/releases/download/v0.6.2/moff-x86_64-apple-darwin.tar.gz"
      sha256 "f1dab96b0ee668e4dd32b4115c29042a4f62cf5f35642f7bbc5760b51e2e2f38"
    end
  end

  def install
    bin.install "moff"
  end

  test do
    assert_match "moff", shell_output("#{bin}/moff --help")
  end
end
