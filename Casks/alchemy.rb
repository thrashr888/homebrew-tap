cask "alchemy" do
  version "0.17.0"
  sha256 "b0cf91ffa0c66f6f6da0afde8ce0a4a82438f34f83ed1f342cc556288eba14d4"

  url "https://github.com/thrashr888/alchemy/releases/download/v0.17.0/Alchemy_0.17.0_aarch64.dmg"
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

