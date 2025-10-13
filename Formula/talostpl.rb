class Talostpl < Formula
  desc "Interactive and non-interactive Talos K8s config generator"
  homepage "https://github.com/vasyakrg/talostpl"
  version "1.1.7"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/vasyakrg/talostpl/releases/download/v1.1.7/talostpl-darwin-amd64",
      verified: "github.com/vasyakrg/talostpl/"
    sha256 "643f8a24ebbbaf128c8e321fb1e572ec2fd9fdbf7827951a669a95001e5b6cdf"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/vasyakrg/talostpl/releases/download/v1.1.7/talostpl-darwin-arm64",
      verified: "github.com/vasyakrg/talostpl/"
    sha256 "7b908fdb72ac3c125937083e91bf194597c8f058abcb4f11327adb8a068fa0dd"
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
