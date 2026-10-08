cask "grove" do
  version "0.1.1"
  sha256 "f2fe7c030c78f958e1344da09b686aaca74e2ea8441fc634c9cdec32f2bc50ba"

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
