cask "alchemy" do
  version "0.61.0"
  sha256 "551d797ab129e2356b362a10abf5d6ece234e2251970d84d363fc16026008e42"

  url "https://github.com/thrashr888/alchemy/releases/download/v0.61.0/Alchemy_0.61.0_aarch64.dmg"
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
