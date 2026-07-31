cask "alchemy" do
  version "0.28.0"
  sha256 "64d0890823bf2aa3d2143461331ecf4f28e634fdd1d56764c943841369d16995"

  url "https://github.com/thrashr888/alchemy/releases/download/v0.28.0/Alchemy_0.28.0_aarch64.dmg"
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

