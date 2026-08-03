cask "alchemy" do
  version "0.31.0"
  sha256 "42f436fe08bf46b3dbcd4d83dc2e6db0445f628bdf8e86ade564cb9481df98ad"

  url "https://github.com/thrashr888/alchemy/releases/download/v0.31.0/Alchemy_0.31.0_aarch64.dmg"
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

