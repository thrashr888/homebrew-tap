cask "alchemy" do
  version "0.15.0"
  sha256 "01a4b2a25923127a7e9ab79eadf5e5af636f5836d415d8390943cf18731d9fe3"

  url "https://github.com/thrashr888/alchemy/releases/download/v0.15.0/Alchemy_0.15.0_aarch64.dmg"
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

