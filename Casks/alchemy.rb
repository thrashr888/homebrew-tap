cask "alchemy" do
  version "0.68.0"
  sha256 "04bef0a902d467bb0835643acb05ead90d8484eb35a806e86c0b4a17bf1a64c7"

  url "https://github.com/thrashr888/alchemy/releases/download/v0.68.0/Alchemy_0.68.0_aarch64.dmg"
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
