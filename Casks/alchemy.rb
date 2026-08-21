cask "alchemy" do
  version "0.43.0"
  sha256 "8cb8f9744b350920d17886bb79cc0b56b9d8fc9a678131f2297d45b1813fb995"

  url "https://github.com/thrashr888/alchemy/releases/download/v0.43.0/Alchemy_0.43.0_aarch64.dmg"
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

