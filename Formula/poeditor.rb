require "formula"
require_relative "lib/private_strategy"

class Poeditor < Formula
  desc "POEditor CLI tool"
  homepage "https://github.com/ArtProcessors/ap-poeditor-tool-macos"
  url "https://github.com/ArtProcessors/ap-poeditor-tool-macos/releases/download/2.11.1/poeditor.zip", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  version "2.11.1"
  sha256 "ee7f3658277a9d56f63cb476495d9b4eac7260d7feed78834c8775dd9786c576"

  def install
    bin.install "poeditor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/poeditor --version")
  end
end
