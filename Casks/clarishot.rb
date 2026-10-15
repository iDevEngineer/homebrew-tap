cask "clarishot" do
  version "0.2.0"
  sha256 "f0708bc831e54beca42c1c51f1946ddc0c1d84abbc5bebd48b875dcd2f42f758"

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
