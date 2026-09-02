cask "alchemy" do
  version "0.53.0"
  sha256 "a36e52771d5666ca4b34060c5cd1450b0edc77c3ae141ad17977cfca75c972b6"

  url "https://github.com/thrashr888/alchemy/releases/download/v0.53.0/Alchemy_0.53.0_aarch64.dmg"
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

