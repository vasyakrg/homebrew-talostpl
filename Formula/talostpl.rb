class Talostpl < Formula
  desc "Interactive and non-interactive Talos K8s config generator"
  homepage "https://github.com/vasyakrg/talostpl"
  version "1.1.3"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/vasyakrg/talostpl/releases/download/v1.1.3/talostpl-darwin-amd64",
      verified: "github.com/vasyakrg/talostpl/"
    sha256 "429e20e375ee071742ab2ab520b0179d4ac743d89152cf9b018896b6bf67c1f4"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/vasyakrg/talostpl/releases/download/v1.1.3/talostpl-darwin-arm64",
      verified: "github.com/vasyakrg/talostpl/"
    sha256 "a4ebf148959eff3cefa13c66e162fe2713ef58d26deb4b421cf91343ca85bbc2"
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
