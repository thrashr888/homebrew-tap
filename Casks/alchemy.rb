cask "alchemy" do
  version "0.58.3"
  sha256 "02521a6b7a3cabd0df2fdf4689a0f3de7dbbd91434a0e2206bd2e0b2e949a7fd"

  url "https://github.com/thrashr888/alchemy/releases/download/v0.58.3/Alchemy_0.58.3_aarch64.dmg"
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
