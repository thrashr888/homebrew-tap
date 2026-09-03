cask "alchemy" do
  version "0.56.0"
  sha256 "dcb2702a5730188e758357ca931b0500896eecaf3eb9e457fb75c50883479bdb"

  url "https://github.com/thrashr888/alchemy/releases/download/v0.56.0/Alchemy_0.56.0_aarch64.dmg"
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
