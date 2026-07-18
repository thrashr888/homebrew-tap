class TauriBrowser < Formula
  desc "Lightweight browser built with Tauri and Rust"
  homepage "https://github.com/thrashr888/tauri-browser"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thrashr888/tauri-browser/releases/download/v0.5.0/tauri-browser-aarch64-apple-darwin.tar.gz"
      sha256 "2d8f793be9fd0b7ccb27330ea6b043c6e128c8adbb8bfff3f14004a9fccc9e73"
    end
    on_intel do
      url "https://github.com/thrashr888/tauri-browser/releases/download/v0.5.0/tauri-browser-x86_64-apple-darwin.tar.gz"
      sha256 "00a693eee4273603568bcab787ece437562ce70b54b00bb75628f324148ab412"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thrashr888/tauri-browser/releases/download/v0.5.0/tauri-browser-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7b15bdeb5ec86ebebaf1f355eb7e7c9b6c85793a5ecd0cd58844511c827c0a31"
    end
    on_intel do
      url "https://github.com/thrashr888/tauri-browser/releases/download/v0.5.0/tauri-browser-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3916a1c1330ffdf95b27d8bd997bd3159e197f2307e9d0a6e11dca56de32a2e7"
    end
  end

  def install
    bin.install "tauri-browser"
  end

  test do
    assert_match "tauri-browser", shell_output("#{bin}/tauri-browser --help")
  end
end

