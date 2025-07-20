class Talostpl < Formula
  desc "Interactive and non-interactive Talos K8s config generator"
  homepage "https://github.com/vasyakrg/talostpl"
  version "1.1.5"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/vasyakrg/talostpl/releases/download/v1.1.5/talostpl-darwin-amd64",
      verified: "github.com/vasyakrg/talostpl/"
    sha256 "a532161e1be4ce66f49db8e731c27b108cf2a462c1372105c80823201ebcd3b7"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/vasyakrg/talostpl/releases/download/v1.1.5/talostpl-darwin-arm64",
      verified: "github.com/vasyakrg/talostpl/"
    sha256 "356a18256c41987de70980ea737616783763fb0a5af1abcee7534d01af202511"
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
