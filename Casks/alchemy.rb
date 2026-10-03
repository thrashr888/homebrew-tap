cask "alchemy" do
  version "0.67.0"
  sha256 "bdf8021e167c83cb2165c164b9c271ac439d94ceb4364e77146983652f6e49fe"

  url "https://github.com/thrashr888/alchemy/releases/download/v0.67.0/Alchemy_0.67.0_aarch64.dmg"
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
