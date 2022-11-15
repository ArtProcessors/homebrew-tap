class AmazonEcsCli < Formula
  desc "Custom fork of he Amazon ECS CLI tool, supporting ARM64 images on Fargate"
  homepage "https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ECS_CLI.html"
  url "https://github.com/ArtProcessors/amazon-ecs-cli/releases/download/v1.22.0%2Bap/ecs-cli-darwin-amd64-1.22.0+ap.tgz"

  # These two values must change when new ecs-cli versions are released
  version "1.22.0+ap"
  sha256 "d5da699cb80293fa207951a9671816809f8afa9b3ff749a9c56e35a648e36a71"

  license "Apache-2.0"

  conflicts_with "amazon-ecs-cli"

  def install
    bin.install "ecs-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ecs-cli --version")
  end
end
