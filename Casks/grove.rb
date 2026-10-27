cask "grove" do
  version "0.1.11"
  sha256 "782b3c258365fce78121770f078e0ec1be340c5d68eac8e5dea9b4384ff632ee"

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
