cask "alchemy" do
  version "0.64.0"
  sha256 "c3d18a35bae9252c34b8222869041feec0c99178143ee6528cd34d87d5941501"

  url "https://github.com/thrashr888/alchemy/releases/download/v0.64.0/Alchemy_0.64.0_aarch64.dmg"
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
