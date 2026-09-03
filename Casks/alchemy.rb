cask "alchemy" do
  version "0.56.1"
  sha256 "3339f95b6d2857f1e055ad4a59937271b7a05a6679a2c0758d42a6f8ed2990b7"

  url "https://github.com/thrashr888/alchemy/releases/download/v0.56.1/Alchemy_0.56.1_aarch64.dmg"
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
