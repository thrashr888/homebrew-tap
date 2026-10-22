cask "tavern" do
  version "1.0.12"
  sha256 "de2cea17684e02bbba8f8ce900d16870986d72e8b901021e680e42a58bfeaec5"

  url "https://github.com/thrashr888/tavern/releases/download/v1.0.12/Tavern-1.0.12-macos-arm64.zip"
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
