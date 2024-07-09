require "formula"
require_relative "lib/private_strategy"

class Poeditor < Formula
  desc "POEditor CLI tool"
  homepage "https://github.com/ArtProcessors/ap-poeditor-tool-macos"
  url "https://github.com/ArtProcessors/ap-poeditor-tool-macos/releases/download/2.7.0/poeditor.zip", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  version "2.7.0"
  sha256 "e7cf739e188103cbd90e940e4b0ad246935a08c302dea7bba433830438ee3a63"

  def install
    bin.install "poeditor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/poeditor --version")
  end
end
