cask "alchemy" do
  version "0.46.0"
  sha256 "334bd760017e5484a4ba804faaae72d32fa3f9d6d3ec6b186827355dc8f0a90e"

  url "https://github.com/thrashr888/alchemy/releases/download/v0.46.0/Alchemy_0.46.0_aarch64.dmg"
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

