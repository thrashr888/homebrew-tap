cask "alchemy" do
  version "0.22.0"
  sha256 "2127f445c60eeccfa65850dc384c3903932426478e665c557cec98a19755728b"

  url "https://github.com/thrashr888/alchemy/releases/download/v0.22.0/Alchemy_0.22.0_aarch64.dmg"
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

