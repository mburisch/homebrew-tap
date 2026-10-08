cask "grove" do
  version "0.1.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/mburisch/grove/releases/download/v#{version}/Grove-#{version}.zip"
  name "Grove"
  desc "Menu bar app for keeping local git checkouts fetched and up to date"
  homepage "https://github.com/mburisch/grove"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Grove.app"

  uninstall quit: "io.github.mburisch.Grove"

  zap trash: "~/Library/Application Support/Grove"
end
