cask "alchemy" do
  version "0.18.0"
  sha256 "aea7919dd791aa50e323a465587681d74be1411c8d5cd99321552262b26272bd"

  url "https://github.com/thrashr888/alchemy/releases/download/v0.18.0/Alchemy_0.18.0_aarch64.dmg"
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

