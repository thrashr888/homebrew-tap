cask "alchemy" do
  version "0.65.0"
  sha256 "546f264247ea5fc643834bd9fa3c2c37176eb1c4a82b19e56ff419c3f4868771"

  url "https://github.com/thrashr888/alchemy/releases/download/v0.65.0/Alchemy_0.65.0_aarch64.dmg"
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
