cask "alchemy" do
  version "0.24.0"
  sha256 "d603e5009d22262d71b855215831ba1e13dbf5327eedb53ed63b55aff7b14101"

  url "https://github.com/thrashr888/alchemy/releases/download/v0.24.0/Alchemy_0.24.0_aarch64.dmg"
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

