cask "alchemy" do
  version "0.57.0"
  sha256 "436bea824f10abeade66d8a8db8d12406ac5bc9a52fd0ca122f2aaf83c302671"

  url "https://github.com/thrashr888/alchemy/releases/download/v0.57.0/Alchemy_0.57.0_aarch64.dmg"
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
