class TauriBrowser < Formula
  desc "Lightweight browser built with Tauri and Rust"
  homepage "https://github.com/thrashr888/tauri-browser"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thrashr888/tauri-browser/releases/download/v0.5.1/tauri-browser-aarch64-apple-darwin.tar.gz"
      sha256 "d8b920929305615bd9a8ebd43450245e932fcb6321498a1f8665ef6bb6d99a18"
    end
    on_intel do
      url "https://github.com/thrashr888/tauri-browser/releases/download/v0.5.1/tauri-browser-x86_64-apple-darwin.tar.gz"
      sha256 "cd9d5d1c72d58bab06fcfee96dc16816a17e3400372e2911e5ba09c8552b9699"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thrashr888/tauri-browser/releases/download/v0.5.1/tauri-browser-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7032de5dc01a847f902a81f4841e858e560841e1f3b82e6f23aa7a70dbbd06be"
    end
    on_intel do
      url "https://github.com/thrashr888/tauri-browser/releases/download/v0.5.1/tauri-browser-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "af3094f15522cfbf89b778bf32ba52326e1b83116103f1729a46be741c09cc18"
    end
  end

  def install
    bin.install "tauri-browser"
  end

  test do
    assert_match "tauri-browser", shell_output("#{bin}/tauri-browser --help")
  end
end

