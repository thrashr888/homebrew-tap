class Cider < Formula
  desc "Manage macOS Apple apps from the command line"
  homepage "https://github.com/thrashr888/cider"
  version "0.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thrashr888/cider/releases/download/v0.9.0/cider-aarch64-apple-darwin.tar.gz"
      sha256 "f993aeeeb549989ae6e9c2f2fab624af395b29ceaa220fa34361c2ba4fdd2615"
    else
      url "https://github.com/thrashr888/cider/releases/download/v0.9.0/cider-x86_64-apple-darwin.tar.gz"
      sha256 "78cad824084bbe79e5d23a8aa684960c95b167e450eeadb960f677c876959cef"
    end
  end

  def install
    bin.install "cider"
  end

  test do
    assert_match "cider", shell_output("#{bin}/cider --help")
  end
end
