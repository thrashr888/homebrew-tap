cask "alchemy" do
  version "0.63.0"
  sha256 "6c3f798d6381032e750ab3bb223a5e5362b0cc58b1e260e05f35ec59beec5f73"

  url "https://github.com/thrashr888/alchemy/releases/download/v0.63.0/Alchemy_0.63.0_aarch64.dmg"
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
