cask "groundsurf" do
  version "1.4.2"
  sha256 "30adf4a26a3b39a784d3ce01e0341e3719bb86858f5da8717f6599484ee75652"

  url "https://github.com/takingbreath/GroundSurf/releases/download/v#{version}/GroundSurf-#{version}-universal.dmg"
  name "GroundSurf"
  desc "Endlessly generated Chinese landscape wallpaper"
  homepage "https://github.com/takingbreath/GroundSurf"

  depends_on macos: :ventura

  app "GroundSurf.app"

  caveats <<~EOS
    This preview is ad-hoc signed and not Apple notarized.
    macOS may block first launch. Review Apple's guidance:
      https://support.apple.com/en-us/102445
    Intel hardware testing and long-run battery benchmarking remain outstanding.
  EOS
end
