cask "alchemy" do
  version "0.21.0"
  sha256 "5dfcaf950ea1ec01169d09887e526adbf20a86099320ad2b7da7c67ecec9fe37"

  url "https://github.com/thrashr888/alchemy/releases/download/v0.21.0/Alchemy_0.21.0_aarch64.dmg"
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

