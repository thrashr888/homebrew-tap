cask "alchemy" do
  version "0.56.2"
  sha256 "b58ffaeb3e8e333389eee3f9f1147bd33082d1f2c3cd40612b867a8fa6cd0fac"

  url "https://github.com/thrashr888/alchemy/releases/download/v0.56.2/Alchemy_0.56.2_aarch64.dmg"
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
