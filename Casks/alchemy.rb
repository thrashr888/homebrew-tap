cask "alchemy" do
  version "0.55.0"
  sha256 "f2a837355b8632f3b7a457dc15596a843421e3d4d3c89cd5f27183d27a728766"

  url "https://github.com/thrashr888/alchemy/releases/download/v0.55.0/Alchemy_0.55.0_aarch64.dmg"
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
