cask "tavern" do
  version "1.0.9"
  sha256 "20997067d58ffe3a8992fb48307726337fa5d9192403b1df4a56306787f1f911"

  url "https://github.com/thrashr888/tavern/releases/download/v1.0.9/Tavern-1.0.9-macos-arm64.zip"
  name "Tavern"
  desc "Home for a party of AI agents: Pi agents, hosted members, mail and goals"
  homepage "https://github.com/thrashr888/tavern"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Tavern.app"

  zap trash: [
    "~/Library/Application Support/Tavern",
    "~/Library/Preferences/dev.thrashr888.tavern.plist",
  ]
end
