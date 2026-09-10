cask "alchemy" do
  version "0.59.0"
  sha256 "35a892784eada23820079fd070d09eb3267360f25337f31b03ee85700df9cdc4"

  url "https://github.com/thrashr888/alchemy/releases/download/v0.59.0/Alchemy_0.59.0_aarch64.dmg"
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
