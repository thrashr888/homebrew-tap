class TauriBrowser < Formula
  desc "Lightweight browser built with Tauri and Rust"
  homepage "https://github.com/thrashr888/tauri-browser"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thrashr888/tauri-browser/releases/download/v#{version}/tauri-browser-aarch64-apple-darwin.tar.gz"
      sha256 "de385bdd07d8b2cde7286c3dbfc87624a297e94a1755efe422cba6b652e6548d"
    end
    on_intel do
      url "https://github.com/thrashr888/tauri-browser/releases/download/v#{version}/tauri-browser-x86_64-apple-darwin.tar.gz"
      sha256 "ec5d2d33c317ba571a12f8132c7f0a708cff016754fcbf67c8e9b49e15a0e197"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thrashr888/tauri-browser/releases/download/v#{version}/tauri-browser-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c425fdb94bbf2465b7543e928651a89cf65510bfe84c93542784df889137498d"
    end
    on_intel do
      url "https://github.com/thrashr888/tauri-browser/releases/download/v#{version}/tauri-browser-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e7d5b10ad9d5dcc6e5897da82b39b8c6dc37d8009ee36867ff96743cbb517d2e"
    end
  end

  def install
    bin.install "tauri-browser"
  end

  test do
    assert_match "tauri-browser", shell_output("#{bin}/tauri-browser --help")
  end
end
