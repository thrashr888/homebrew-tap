cask "alchemy" do
  version "0.33.0"
  sha256 "2989f441ddfb2cc2bbc8023b2e54b9cba4bdc53225c1add99019734125e95fa1"

  url "https://github.com/thrashr888/alchemy/releases/download/v0.33.0/Alchemy_0.33.0_aarch64.dmg"
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

