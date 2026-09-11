cask "saydrop" do
  version "0.4.0"
  sha256 "ae9936ea4713cfb24c7f5a2f0115fa5b5f0af3b140f6ef4f6246e14c5519192d"

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
