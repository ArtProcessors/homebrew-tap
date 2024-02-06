require "formula"
require_relative "lib/private_strategy"

class Poeditor < Formula
  desc "POEditor CLI tool"
  homepage "https://github.com/ArtProcessors/ap-poeditor-tool-macos"
  url "https://github.com/ArtProcessors/ap-poeditor-tool-macos/releases/download/2.5.1/poeditor.zip", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  version "2.5.1"
  sha256 "06c75720e92a736a09173f8aa036190deeceffd57aee736a0830e6676c27839c"

  def install
    bin.install "poeditor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/poeditor --version")
  end
end
