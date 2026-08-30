cask "alchemy" do
  version "0.50.0"
  sha256 "2b7b1614f5ed6664142bd13ae9d110bcc0953fe8a58236bd102d92c6afe220d9"

  url "https://github.com/thrashr888/alchemy/releases/download/v0.50.0/Alchemy_0.50.0_aarch64.dmg"
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

