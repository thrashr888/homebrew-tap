cask "alchemy" do
  version "0.42.0"
  sha256 "af2b8cd40cb18044d0b359f1fbdc0d72e0419f9bbdb43d9217bf1b334afc43e5"

  url "https://github.com/thrashr888/alchemy/releases/download/v0.42.0/Alchemy_0.42.0_aarch64.dmg"
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

