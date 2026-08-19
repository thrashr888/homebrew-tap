class Cider < Formula
  desc "Manage macOS Apple apps from the command line"
  homepage "https://github.com/thrashr888/cider"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thrashr888/cider/releases/download/v0.2.1/cider-aarch64-apple-darwin.tar.gz"
      sha256 "a81baf1a4d2fe1b6902f783d2c29a6f4165706a076a840890587dd5538700d0e"
    else
      url "https://github.com/thrashr888/cider/releases/download/v0.2.1/cider-x86_64-apple-darwin.tar.gz"
      sha256 "5f0fa5ac90adec05466bf0aa9d60f497aaf0449639941d331068cd52e9501ffc"
    end
  end

  def install
    bin.install "cider"
  end

  test do
    assert_match "cider", shell_output("#{bin}/cider --help")
  end
end

