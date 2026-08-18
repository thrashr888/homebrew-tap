cask "alchemy" do
  version "0.39.0"
  sha256 "61b1abe6edb526a9d3308a092b79c2557b6a02bf073b32e5f0da6e638252cbb3"

  url "https://github.com/thrashr888/alchemy/releases/download/v0.39.0/Alchemy_0.39.0_aarch64.dmg"
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

