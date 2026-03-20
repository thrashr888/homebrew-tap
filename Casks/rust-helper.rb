cask "rust-helper" do
  version "0.3.1"

  on_arm do
    sha256 "b6bb3810d2b25452ed930330c36f44642dece14412c27d29e8c11060e690f7b3"
    url "https://github.com/thrashr888/rust-helper/releases/download/v0.3.1/Rust.Helper_0.3.1_aarch64.dmg"
  end
  on_intel do
    sha256 "e5d39c737ff8017fce344fb24610b9ec373b38b6263b383fbe3c105dc6c3b0d7"
    url "https://github.com/thrashr888/rust-helper/releases/download/v0.3.1/Rust.Helper_0.3.1_x64.dmg"
  end

  name "Rust Helper"
  desc "AI-powered Rust development assistant"
  homepage "https://github.com/thrashr888/rust-helper"

  depends_on macos: ">= :ventura"

  app "Rust Helper.app"

  zap trash: [
    "~/Library/Application Support/dev.thrasher.rust-helper",
    "~/Library/Caches/dev.thrasher.rust-helper",
  ]
end
