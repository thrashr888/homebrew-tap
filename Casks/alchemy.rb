cask "alchemy" do
  version "0.41.0"
  sha256 "df12001a00b4a04c08d557b2115322582112fac73cacdcea3f6571d422016211"

  url "https://github.com/thrashr888/alchemy/releases/download/v0.41.0/Alchemy_0.41.0_aarch64.dmg"
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

