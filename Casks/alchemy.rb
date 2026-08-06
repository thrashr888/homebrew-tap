cask "alchemy" do
  version "0.36.0"
  sha256 "183a13cdc92d3e184b881583839078990b85d5b58a513fb4d701e368354e2c3d"

  url "https://github.com/thrashr888/alchemy/releases/download/v0.36.0/Alchemy_0.36.0_aarch64.dmg"
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

