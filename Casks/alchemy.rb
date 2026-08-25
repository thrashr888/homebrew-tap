cask "alchemy" do
  version "0.47.0"
  sha256 "bd5a5cf8273491d52743d3f19499ae93df9783939e8370c11c482449f9f55358"

  url "https://github.com/thrashr888/alchemy/releases/download/v0.47.0/Alchemy_0.47.0_aarch64.dmg"
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

