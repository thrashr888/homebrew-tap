class Cider < Formula
  desc "Manage macOS Apple apps from the command line"
  homepage "https://github.com/thrashr888/cider"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thrashr888/cider/releases/download/v0.7.0/cider-aarch64-apple-darwin.tar.gz"
      sha256 "9ac3540bab1f9da71dbfcee6c691d98be0c8b978cc5f9057d6bc1dc268c2a4b7"
    else
      url "https://github.com/thrashr888/cider/releases/download/v0.7.0/cider-x86_64-apple-darwin.tar.gz"
      sha256 "2662b4b2172e515ce12a4aa48a2d00226ab7b556474bf4357ad6fadf7a743ac8"
    end
  end

  def install
    bin.install "cider"
  end

  test do
    assert_match "cider", shell_output("#{bin}/cider --help")
  end
end
