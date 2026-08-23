cask "alchemy" do
  version "0.45.0"
  sha256 "515a0b58794902f8be75c6841fe5904358546433dbfcf7cdab5704c4c3a990a6"

  url "https://github.com/thrashr888/alchemy/releases/download/v0.45.0/Alchemy_0.45.0_aarch64.dmg"
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

