cask "alchemy" do
  version "0.19.0"
  sha256 "894703cf7f0d84406ccde10b1b34eadcb53cc27b4afa3d07df59a7823a3581c6"

  url "https://github.com/thrashr888/alchemy/releases/download/v0.19.0/Alchemy_0.19.0_aarch64.dmg"
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

