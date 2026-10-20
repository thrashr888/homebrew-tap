cask "tavern" do
  version "1.0.6"
  sha256 "698299eb0a79e9b203fefd77fb044239ae2c78341f6fc19fc5da8d8a9c8dc691"

  url "https://github.com/thrashr888/tavern/releases/download/v1.0.6/Tavern-1.0.6-macos-arm64.zip"
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
