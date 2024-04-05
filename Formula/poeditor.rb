require "formula"
require_relative "lib/private_strategy"

class Poeditor < Formula
  desc "POEditor CLI tool"
  homepage "https://github.com/ArtProcessors/ap-poeditor-tool-macos"
  url "https://github.com/ArtProcessors/ap-poeditor-tool-macos/releases/download/2.6.0/poeditor.zip", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  version "2.6.0"
  sha256 "83742e4c33518756908f773300132d1e4e7ae9df078ffc303bac406938aeda7f"

  def install
    bin.install "poeditor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/poeditor --version")
  end
end
