class Talostpl < Formula
  desc "Interactive and non-interactive Talos K8s config generator"
  homepage "https://github.com/vasyakrg/talostpl"
  version "1.14.4"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/vasyakrg/talostpl/releases/download/v1.14.4/talostpl-darwin-amd64",
      verified: "github.com/vasyakrg/talostpl/"
    sha256 "6c4d2d5004908f8a377b4979d49ccfe97813023719949221fddbdf96c2b0f862"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/vasyakrg/talostpl/releases/download/v1.14.4/talostpl-darwin-arm64",
      verified: "github.com/vasyakrg/talostpl/"
    sha256 "6c4e742670dd4b117684a5ceb618eebdbd072e995c425f801a0cc373c84f6ca0"
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
