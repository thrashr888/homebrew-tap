cask "alchemy" do
  version "0.16.0"
  sha256 "be1110aaef75dbf4f4f255f367fc4a2c572154b16c833a213b15cb93ce56ab8f"

  url "https://github.com/thrashr888/alchemy/releases/download/v0.16.0/Alchemy_0.16.0_aarch64.dmg"
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

