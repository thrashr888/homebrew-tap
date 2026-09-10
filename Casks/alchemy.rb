cask "alchemy" do
  version "0.59.1"
  sha256 "1b9780c7840ecc75e6f1cdc750357fcb74dcc01dbfb9418e706e324da8340997"

  url "https://github.com/thrashr888/alchemy/releases/download/v0.59.1/Alchemy_0.59.1_aarch64.dmg"
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
