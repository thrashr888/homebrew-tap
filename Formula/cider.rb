class Cider < Formula
  desc "Manage macOS Apple apps from the command line"
  homepage "https://github.com/thrashr888/cider"
  version "0.14.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thrashr888/cider/releases/download/v0.14.0/cider-aarch64-apple-darwin.tar.gz"
      sha256 "702b62b91d7a99d0f6be7607de279837a81906f433b1b9ea54a5fd6e2ab6de52"
    else
      url "https://github.com/thrashr888/cider/releases/download/v0.14.0/cider-x86_64-apple-darwin.tar.gz"
      sha256 "8dbeda18510d95489cda5706bbaaff53c791d4aae6a84aa2fa76b576a483efed"
    end
  end

  def install
    bin.install "cider"
  end

  test do
    assert_match "cider", shell_output("#{bin}/cider --help")
  end
end
