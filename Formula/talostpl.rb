class Talostpl < Formula
  desc "Interactive and non-interactive Talos K8s config generator"
  homepage "https://github.com/vasyakrg/talostpl"
  version "1.1.8"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/vasyakrg/talostpl/releases/download/v1.1.8/talostpl-darwin-amd64",
      verified: "github.com/vasyakrg/talostpl/"
    sha256 "110dd432de44523dc91734f849a73149277379c5c83f368529e5f2e94fbb4c71"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/vasyakrg/talostpl/releases/download/v1.1.8/talostpl-darwin-arm64",
      verified: "github.com/vasyakrg/talostpl/"
    sha256 "7677632b2f112516c52cb9288cb91cf021834190218728e06a44299091301cdd"
  else
    odie "Unexpected platform!"
  end

  def install
    if OS.mac? && Hardware::CPU.intel?
      bin.install "talostpl-darwin-amd64" => "talostpl"
    elsif OS.mac? && Hardware::CPU.arm?
      bin.install "talostpl-darwin-arm64" => "talostpl"
    end
  end
end
