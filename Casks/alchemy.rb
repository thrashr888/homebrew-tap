cask "alchemy" do
  version "0.48.0"
  sha256 "a5a77ec398da69528e1d26c39b10e88f992697471d54ea91fc4ff2de04ada1cf"

  url "https://github.com/thrashr888/alchemy/releases/download/v0.48.0/Alchemy_0.48.0_aarch64.dmg"
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

