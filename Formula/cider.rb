class Cider < Formula
  desc "Manage macOS Apple apps from the command line"
  homepage "https://github.com/thrashr888/cider"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thrashr888/cider/releases/download/v0.1.3/cider-aarch64-apple-darwin.tar.gz"
      sha256 "b3dd7db14bd716fa507ff1ba994d47979cac2baaea976d77923513d2e42a4270"
    else
      url "https://github.com/thrashr888/cider/releases/download/v0.1.3/cider-x86_64-apple-darwin.tar.gz"
      sha256 "fadc6f25601aa5b7759ad9c31ad79de3a4bcd032c7cd11e7fff86316848346ef"
    end
  end

  def install
    bin.install "cider"
  end

  test do
    assert_match "cider", shell_output("#{bin}/cider --help")
  end
end
