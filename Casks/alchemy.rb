cask "alchemy" do
  version "0.25.0"
  sha256 "2ac553136c5cdc96721a90764d40ec14183355a095a8421c2b12749e77a14a8c"

  url "https://github.com/thrashr888/alchemy/releases/download/v0.25.0/Alchemy_0.25.0_aarch64.dmg"
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

