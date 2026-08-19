cask "alchemy" do
  version "0.40.0"
  sha256 "8576e17c99ded752b50f1dba4c1b262628420de772a1694099b61828a406c07d"

  url "https://github.com/thrashr888/alchemy/releases/download/v0.40.0/Alchemy_0.40.0_aarch64.dmg"
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

