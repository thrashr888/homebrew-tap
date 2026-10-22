cask "tavern" do
  version "1.0.10"
  sha256 "f612da9d414c1e2f848bfa8dfd69a6303cb6ecf57df53fabfae319385ea7950c"

  url "https://github.com/thrashr888/tavern/releases/download/v1.0.10/Tavern-1.0.10-macos-arm64.zip"
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
