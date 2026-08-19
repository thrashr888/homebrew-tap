cask "alchemy" do
  version "0.40.1"
  sha256 "4109e72978206b7b59c6f0b937ef9a8adc3ae23a60165a80fe356d2087c450cb"

  url "https://github.com/thrashr888/alchemy/releases/download/v0.40.1/Alchemy_0.40.1_aarch64.dmg"
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

