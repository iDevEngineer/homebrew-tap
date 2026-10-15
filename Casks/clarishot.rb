cask "clarishot" do
  version "0.2.2"
  sha256 "e9172572de6a3900dede090ed92b12826af618424b65634d750b20aea5e29f89"

  url "https://github.com/iDevEngineer/clarishot/releases/download/v#{version}/Clarishot-#{version}.zip"
  name "Clarishot"
  desc "Screenshots, screen recordings, annotation and text capture"
  homepage "https://github.com/iDevEngineer/clarishot"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Clarishot.app"
  binary "#{appdir}/Clarishot.app/Contents/Helpers/clarishot"

  zap trash: [
    "~/Library/Application Support/Clarishot",
    "~/Library/Caches/com.scottmackey.clarishot",
    "~/Library/HTTPStorages/com.scottmackey.clarishot",
    "~/Library/Preferences/com.scottmackey.clarishot.plist",
  ]
end
