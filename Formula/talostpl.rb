class Talostpl < Formula
  desc "Interactive and non-interactive Talos K8s config generator"
  homepage "https://github.com/vasyakrg/talostpl"
  version "1.4.2"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/vasyakrg/talostpl/releases/download/v1.4.2/talostpl-darwin-amd64",
      verified: "github.com/vasyakrg/talostpl/"
    sha256 "75a7abf75af70be2a95128005d4efdc2703ff4f2b9879726f134bc32ca77678a"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/vasyakrg/talostpl/releases/download/v1.4.2/talostpl-darwin-arm64",
      verified: "github.com/vasyakrg/talostpl/"
    sha256 "6a9c762a856bec4b6fac3fbe569bcf910f97cf7bc7a443af763917b61f69b6d7"
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
