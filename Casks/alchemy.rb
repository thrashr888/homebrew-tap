cask "alchemy" do
  version "0.12.0"
  sha256 "da07216de7607d68ca5b8841e23e3a37e57e411185c50d2a5cb1d47ee729a3f5"

  url "https://github.com/thrashr888/alchemy/releases/download/v0.12.0/Alchemy_0.12.0_aarch64.dmg"
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

