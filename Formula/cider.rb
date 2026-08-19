class Cider < Formula
  desc "Manage macOS Apple apps from the command line"
  homepage "https://github.com/thrashr888/cider"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thrashr888/cider/releases/download/v0.4.0/cider-aarch64-apple-darwin.tar.gz"
      sha256 "a50fe29c4d1d00592bb40a8c196e666cacc4b00f5a6da1ee0a9623cf9adf8076"
    else
      url "https://github.com/thrashr888/cider/releases/download/v0.4.0/cider-x86_64-apple-darwin.tar.gz"
      sha256 "d60dcf89d4bfc88a4103cb4146eb819f1f284cae26d4c29e6ba6de4c825ffb35"
    end
  end

  def install
    bin.install "cider"
  end

  test do
    assert_match "cider", shell_output("#{bin}/cider --help")
  end
end

