class Cider < Formula
  desc "Manage macOS Apple apps from the command line"
  homepage "https://github.com/thrashr888/cider"
  version "0.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thrashr888/cider/releases/download/v0.8.0/cider-aarch64-apple-darwin.tar.gz"
      sha256 "fc30c83e1d371be2ca9d5a752f3c56239ce31d64f6c51fa3138f9eaa19d48a1c"
    else
      url "https://github.com/thrashr888/cider/releases/download/v0.8.0/cider-x86_64-apple-darwin.tar.gz"
      sha256 "dc551c4bbe8f649ed87baf2a474f57f6f5e5e672dff75298569f974a074f3789"
    end
  end

  def install
    bin.install "cider"
  end

  test do
    assert_match "cider", shell_output("#{bin}/cider --help")
  end
end
