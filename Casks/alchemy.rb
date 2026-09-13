cask "alchemy" do
  version "0.60.0"
  sha256 "67d3c422f6106d53f54bb32c4f020ad71f78ce7e3f6eaa567534d4539b1346d6"

  url "https://github.com/thrashr888/alchemy/releases/download/v0.60.0/Alchemy_0.60.0_aarch64.dmg"
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
