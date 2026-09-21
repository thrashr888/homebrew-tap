class Cider < Formula
  desc "Manage macOS Apple apps from the command line"
  homepage "https://github.com/thrashr888/cider"
  version "0.10.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thrashr888/cider/releases/download/v0.10.0/cider-aarch64-apple-darwin.tar.gz"
      sha256 "a6d2bb601d89f2f62a1d83dd6c7266f2ff17521fd85b332bd5280a729e16fed3"
    else
      url "https://github.com/thrashr888/cider/releases/download/v0.10.0/cider-x86_64-apple-darwin.tar.gz"
      sha256 "83fdfe01a74f7a18200e8e66592b86cece7392605defe426bb7a80c2f5180d90"
    end
  end

  def install
    bin.install "cider"
  end

  test do
    assert_match "cider", shell_output("#{bin}/cider --help")
  end
end
