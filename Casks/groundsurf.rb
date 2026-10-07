cask "groundsurf" do
  version "1.4.0"
  sha256 "7d5dfdcabafca7424659537bed766c68defed0ee33d9ff2b2fe104b58e4a2798"

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
