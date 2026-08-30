cask "alchemy" do
  version "0.51.0"
  sha256 "d4e46835d550e028650146357c2beab01bcf6aa9e030524333db43e7f5af0543"

  url "https://github.com/thrashr888/alchemy/releases/download/v0.51.0/Alchemy_0.51.0_aarch64.dmg"
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

