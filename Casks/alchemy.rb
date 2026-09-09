cask "alchemy" do
  version "0.58.2"
  sha256 "55a916d66528dcc6593b858ddec55442d87b4ffd2df748e8aaa52f41698e038e"

  url "https://github.com/thrashr888/alchemy/releases/download/v0.58.2/Alchemy_0.58.2_aarch64.dmg"
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
