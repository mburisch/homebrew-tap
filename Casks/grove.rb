cask "grove" do
  version "0.1.3"
  sha256 "a8f795b1dc53706238ef3b4313c6894172c3fa62fb23280179739fbf2b5f66d6"

  url "https://github.com/mburisch/grove/releases/download/v#{version}/Grove-#{version}.zip"
  name "Grove"
  desc "Menu bar app for keeping local git checkouts fetched and up to date"
  homepage "https://github.com/mburisch/grove"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :golden_gate

  app "Grove.app"

  uninstall quit: "io.github.mburisch.Grove"

  zap trash: "~/Library/Application Support/Grove"
end
