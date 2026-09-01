cask "alchemy" do
  version "0.52.0"
  sha256 "62b8d6bd14cbd83fa4c9cd11c0b77cfb2b4a4cf13a77fba8b1a73105c7a25ff1"

  url "https://github.com/thrashr888/alchemy/releases/download/v0.52.0/Alchemy_0.52.0_aarch64.dmg"
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

