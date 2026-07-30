cask "alchemy" do
  version "0.26.0"
  sha256 "f289de1430a157e253a757de6f5cc8ab32ebd070db955ec6e2e4dc681f5832c2"

  url "https://github.com/thrashr888/alchemy/releases/download/v0.26.0/Alchemy_0.26.0_aarch64.dmg"
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

