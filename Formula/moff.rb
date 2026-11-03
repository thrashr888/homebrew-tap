class Moff < Formula
  desc "Agent-first Microsoft 365 CLI"
  homepage "https://github.com/thrashr888/moff"
  version "0.6.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thrashr888/moff/releases/download/v0.6.1/moff-aarch64-apple-darwin.tar.gz"
      sha256 "3fdf9666650e0098a9f537777ceb035e92943c4fa47598af66c33751063d92fb"
    else
      url "https://github.com/thrashr888/moff/releases/download/v0.6.1/moff-x86_64-apple-darwin.tar.gz"
      sha256 "94e8abd31d6b3be9aee7d6574a8a0fd5311cc0210e3bbaf72dac54caade8a263"
    end
  end

  def install
    bin.install "moff"
  end

  test do
    assert_match "moff", shell_output("#{bin}/moff --help")
  end
end
