cask "saydrop" do
  version "0.4.6"
  sha256 "a26af062e2bea93315a6c5454bfc49cade499ce964d649a50aca372291cf3d77"

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
