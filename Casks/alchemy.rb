cask "alchemy" do
  version "0.62.0"
  sha256 "d56522b8987633734821d4bdabc87297d10d56a19f6bb87d5ee76dbe83f35395"

  url "https://github.com/thrashr888/alchemy/releases/download/v0.62.0/Alchemy_0.62.0_aarch64.dmg"
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
