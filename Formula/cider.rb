class Cider < Formula
  desc "Manage macOS Apple apps from the command line"
  homepage "https://github.com/thrashr888/cider"
  version "0.13.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thrashr888/cider/releases/download/v0.13.0/cider-aarch64-apple-darwin.tar.gz"
      sha256 "9aa2c7457873d02cf7a4fbac41c74e896f96a892113826af0dbb9dfd48fbb293"
    else
      url "https://github.com/thrashr888/cider/releases/download/v0.13.0/cider-x86_64-apple-darwin.tar.gz"
      sha256 "d2cf5cd8b84a87ea9ffb1c4150a72e035850d2ba939f3da26c0522482c4fe919"
    end
  end

  def install
    bin.install "cider"
  end

  test do
    assert_match "cider", shell_output("#{bin}/cider --help")
  end
end
