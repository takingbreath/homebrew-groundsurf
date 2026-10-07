cask "groundsurf" do
  version "1.3.0"
  sha256 "a6f771a31a71db206caf34afb687d61c8703dec4ce5657f004933e05cccf07f3"

  url "https://github.com/takingbreath/GroundSurf/releases/download/v#{version}/GroundSurf-#{version}-universal.dmg"
  name "GroundSurf"
  desc "Endlessly generated Chinese landscape wallpaper"
  homepage "https://github.com/takingbreath/GroundSurf"

  depends_on macos: ">= :ventura"

  app "GroundSurf.app"

  caveats <<~EOS
    This preview is ad-hoc signed and not Apple notarized.
    macOS may block first launch. Review Apple's guidance:
      https://support.apple.com/en-us/102445
    Intel hardware testing and long-run battery benchmarking remain outstanding.
  EOS
end
