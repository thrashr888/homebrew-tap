cask "alchemy" do
  version "0.23.0"
  sha256 "052182505100d9a34b25269d08a933b40bf391279dfdb0a903a6a477df04a438"

  url "https://github.com/thrashr888/alchemy/releases/download/v0.23.0/Alchemy_0.23.0_aarch64.dmg"
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

