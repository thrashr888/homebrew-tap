cask "alchemy" do
  version "0.32.0"
  sha256 "700ac3290314d19621a15ad5a5e8df79ad60981b5c0628e5d8dc46805f11d21d"

  url "https://github.com/thrashr888/alchemy/releases/download/v0.32.0/Alchemy_0.32.0_aarch64.dmg"
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

