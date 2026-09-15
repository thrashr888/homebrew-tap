cask "alchemy" do
  version "0.61.1"
  sha256 "c32de7a3c838c4bc04c862710cd99052d9632120c5bece057fb19f768c2d1a73"

  url "https://github.com/thrashr888/alchemy/releases/download/v0.61.1/Alchemy_0.61.1_aarch64.dmg"
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
