cask "rust-helper" do
  version "0.4.0"

  on_arm do
    sha256 "71a6b6730b611aed72e6b79c71a107fcd9a69b8fd8bfc8f0351c44f1967c18bb"
    url "https://github.com/thrashr888/rust-helper/releases/download/v0.4.0/Rust.Helper_0.4.0_aarch64.dmg"
  end
  on_intel do
    sha256 "980e25ec8f8808071573f1c3b800aa9574d81b94e0bf7300c1c223d7369cd024"
    url "https://github.com/thrashr888/rust-helper/releases/download/v0.4.0/Rust.Helper_0.4.0_x64.dmg"
  end

  name "Rust Helper"
  desc "AI-powered Rust development assistant"
  homepage "https://github.com/thrashr888/rust-helper"

  depends_on macos: :ventura

  app "Rust Helper.app"

  zap trash: [
    "~/Library/Application Support/dev.thrasher.rust-helper",
    "~/Library/Caches/dev.thrasher.rust-helper",
  ]
end
