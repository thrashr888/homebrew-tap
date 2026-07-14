cask "alchemy" do
  version "0.14.0"
  sha256 "adcf1c7e2747fa6046c0a959591d5385ff0cfaceaf2492d3bb64372442497e1a"

  url "https://github.com/thrashr888/alchemy/releases/download/v0.14.0/Alchemy_0.14.0_aarch64.dmg"
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

