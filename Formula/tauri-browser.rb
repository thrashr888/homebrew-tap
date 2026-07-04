class TauriBrowser < Formula
  desc "Lightweight browser built with Tauri and Rust"
  homepage "https://github.com/thrashr888/tauri-browser"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thrashr888/tauri-browser/releases/download/v0.4.1/tauri-browser-aarch64-apple-darwin.tar.gz"
      sha256 "b2d8ea081d8e1bca60a27dddc87332ea75ee1442651e14a6c9d7018b991f1cd9"
    end
    on_intel do
      url "https://github.com/thrashr888/tauri-browser/releases/download/v0.4.1/tauri-browser-x86_64-apple-darwin.tar.gz"
      sha256 "c2ace907a5eb98a53be6fb98d7e238e4c789f3c13810245b20f6c0f21038396a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thrashr888/tauri-browser/releases/download/v0.4.1/tauri-browser-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "675b2bbce1cf73ffabe1cdf6fc24e21b844d3911c01ec3c4f681b8ac943427ac"
    end
    on_intel do
      url "https://github.com/thrashr888/tauri-browser/releases/download/v0.4.1/tauri-browser-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4599a7a036360e8df8bb303b1f600dd43558ab3c8f6311ec63cffdc5debf907c"
    end
  end

  def install
    bin.install "tauri-browser"
  end

  test do
    assert_match "tauri-browser", shell_output("#{bin}/tauri-browser --help")
  end
end

