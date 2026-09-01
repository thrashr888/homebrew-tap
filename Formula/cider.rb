class Cider < Formula
  desc "Manage macOS Apple apps from the command line"
  homepage "https://github.com/thrashr888/cider"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thrashr888/cider/releases/download/v0.5.0/cider-aarch64-apple-darwin.tar.gz"
      sha256 "e94da3cefbc4da999771832339b921ae5ef83b18ed651b03b2435215b77188de"
    else
      url "https://github.com/thrashr888/cider/releases/download/v0.5.0/cider-x86_64-apple-darwin.tar.gz"
      sha256 "61524b2c735f04d4abe0c001b934f913bb811e33aa11ed11eecb84b631ee28d3"
    end
  end

  def install
    bin.install "cider"
  end

  test do
    assert_match "cider", shell_output("#{bin}/cider --help")
  end
end

