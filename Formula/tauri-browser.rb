class TauriBrowser < Formula
  desc "Lightweight browser built with Tauri and Rust"
  homepage "https://github.com/thrashr888/tauri-browser"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thrashr888/tauri-browser/releases/download/v0.6.0/tauri-browser-aarch64-apple-darwin.tar.gz"
      sha256 "de08fb385d05a60f87492664c4d5a1d755e2b46f030a20c63b0e4df427fb9685"
    end
    on_intel do
      url "https://github.com/thrashr888/tauri-browser/releases/download/v0.6.0/tauri-browser-x86_64-apple-darwin.tar.gz"
      sha256 "4b6fefc131b801bf68eb5b739c3c0268ef683d07eac9a11417ccb0772480a2cb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thrashr888/tauri-browser/releases/download/v0.6.0/tauri-browser-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b844564e369b90b44db0d6bb670bbb8e1ec139b5def50292508d69a5bf29e2cb"
    end
    on_intel do
      url "https://github.com/thrashr888/tauri-browser/releases/download/v0.6.0/tauri-browser-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8e53fd64dd970e28cb83931f34fcafb46e067a351c9ab3caa63e8d063ab83ede"
    end
  end

  def install
    bin.install "tauri-browser"
  end

  test do
    assert_match "tauri-browser", shell_output("#{bin}/tauri-browser --help")
  end
end

