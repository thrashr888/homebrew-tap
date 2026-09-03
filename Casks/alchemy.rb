cask "alchemy" do
  version "0.54.0"
  sha256 "c699ee20c84426159b13c257f8438f380fda386f0ad17e94161350b93985852f"

  url "https://github.com/thrashr888/alchemy/releases/download/v0.54.0/Alchemy_0.54.0_aarch64.dmg"
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
