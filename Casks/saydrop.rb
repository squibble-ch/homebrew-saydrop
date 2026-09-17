cask "saydrop" do
  version "0.4.4"
  sha256 "75ceb3ad15077e03e2b56f623930b3b90dc671282e7adb082b6872eefb95fd93"

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
