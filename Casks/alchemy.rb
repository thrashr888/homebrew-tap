cask "alchemy" do
  version "0.70.0"
  sha256 "42cce313d6d49bf08087880e4bfbe5b7196a4e6faefd459d3684d8fe9753a467"

  url "https://github.com/thrashr888/alchemy/releases/download/v0.70.0/Alchemy_0.70.0_aarch64.dmg"
  name "Alchemy"
  desc "Local-first research notebooks - grounded chat with your own sources"
  homepage "https://github.com/thrashr888/alchemy"

  depends_on macos: :ventura
  depends_on arch: :arm64

  app "Alchemy.app"

  zap trash: [
    "~/Library/Application Support/com.thrashr888.alchemy",
    "~/Library/Preferences/com.thrashr888.alchemy.plist",
    "~/Library/Caches/com.thrashr888.alchemy",
    "~/Library/WebKit/com.thrashr888.alchemy",
  ]
end
