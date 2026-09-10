cask "saydrop" do
  version "0.3.2"
  sha256 "714cc3181646fa3e3c33ee0deb5ff5750dfae4aeecfa9808dc67d04bb6291aec"

  url "https://saydrop.squibble.ch/downloads/Saydrop-v#{version}.dmg"
  name "Saydrop"
  desc "Local push-to-talk dictation"
  homepage "https://saydrop.squibble.ch/"

  livecheck do
    url "https://saydrop.squibble.ch/downloads/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Saydrop.app"

  zap trash: [
    "~/Library/Application Support/Saydrop",
    "~/Library/Preferences/ch.squibble.saydrop.plist",
  ]
end
