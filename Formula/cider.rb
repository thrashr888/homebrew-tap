class Cider < Formula
  desc "Manage macOS Apple apps from the command line"
  homepage "https://github.com/thrashr888/cider"
  version "0.11.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thrashr888/cider/releases/download/v0.11.0/cider-aarch64-apple-darwin.tar.gz"
      sha256 "fef8ae037615bd21aaa2a4f90df0be1eebde55af6167dfd046b351fb11b0d4b6"
    else
      url "https://github.com/thrashr888/cider/releases/download/v0.11.0/cider-x86_64-apple-darwin.tar.gz"
      sha256 "db096e9888a9c13641753f31bce54dac648997ea47ad93d379e39ec4218ddda8"
    end
  end

  def install
    bin.install "cider"
  end

  test do
    assert_match "cider", shell_output("#{bin}/cider --help")
  end
end
