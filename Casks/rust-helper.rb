cask "rust-helper" do
  version "0.3.0"

  on_arm do
    sha256 "42d3daa5c42586f5934ab60c1d6afb2aa6762e7ee033271dd0f8495e74710315"
    url "https://github.com/thrashr888/rust-helper/releases/download/v#{version}/Rust.Helper_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "a68304c662b1228d397d7b5e190ec7a3f0c9463a586c8b0894eda45c6c1e2e2f"
    url "https://github.com/thrashr888/rust-helper/releases/download/v#{version}/Rust.Helper_#{version}_x64.dmg"
  end

  name "Rust Helper"
  desc "AI-powered Rust development assistant"
  homepage "https://github.com/thrashr888/rust-helper"
  license "MIT"

  depends_on macos: ">= :ventura"

  app "Rust Helper.app"

  zap trash: [
    "~/Library/Application Support/dev.thrasher.rust-helper",
    "~/Library/Caches/dev.thrasher.rust-helper",
  ]
end
