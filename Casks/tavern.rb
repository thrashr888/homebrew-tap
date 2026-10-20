cask "tavern" do
  version "1.0.5"
  sha256 "4406d58a237cad0fb9071819d451eabd79d9306ef8b3e728554e08a1597384a7"

  url "https://github.com/thrashr888/tavern/releases/download/v1.0.5/Tavern-1.0.5-macos-arm64.zip"
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
