cask "grove" do
  version "0.1.10"
  sha256 "41722f267396311bf64deee752e64ce0e775bb0731010137b214bcbc93349eab"

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
