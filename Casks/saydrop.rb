cask "saydrop" do
  version "0.4.2"
  sha256 "e6ec00c0f255e5f93db0387db7d9ee39aac9b215685598778c61df4f2fa68850"

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
