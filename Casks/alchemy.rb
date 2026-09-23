cask "alchemy" do
  version "0.65.1"
  sha256 "5d432675e135933b568674fbf5fb0ef688efe19662524e06971fa2461915a10f"

  url "https://github.com/thrashr888/alchemy/releases/download/v0.65.1/Alchemy_0.65.1_aarch64.dmg"
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
