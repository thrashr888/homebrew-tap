cask "alchemy" do
  version "0.34.0"
  sha256 "3d15b4aed90c4f2d330092f880d47919e899ae0af2f248f7f436e0d7544d2dea"

  url "https://github.com/thrashr888/alchemy/releases/download/v0.34.0/Alchemy_0.34.0_aarch64.dmg"
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

