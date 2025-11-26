class Talostpl < Formula
  desc "Interactive and non-interactive Talos K8s config generator"
  homepage "https://github.com/vasyakrg/talostpl"
  version "1.2.1"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/vasyakrg/talostpl/releases/download/v1.2.1/talostpl-darwin-amd64",
      verified: "github.com/vasyakrg/talostpl/"
    sha256 "37cc16ec4fc7056e34f3da069e503662e36a3c39a6ccc1686213822f10adadc4"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/vasyakrg/talostpl/releases/download/v1.2.1/talostpl-darwin-arm64",
      verified: "github.com/vasyakrg/talostpl/"
    sha256 "1ab3bc1c05a1ff3998c87d8c3e631184d848a5c426c7f839c2c8f7bc0873b518"
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
