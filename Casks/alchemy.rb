cask "alchemy" do
  version "0.37.0"
  sha256 "4af76255d4849bb72b304c0d3645927fe9303e1be210af71c23762fa1204f7a5"

  url "https://github.com/thrashr888/alchemy/releases/download/v0.37.0/Alchemy_0.37.0_aarch64.dmg"
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

