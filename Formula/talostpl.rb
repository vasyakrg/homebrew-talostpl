class Talostpl < Formula
  desc "Interactive and non-interactive Talos K8s config generator"
  homepage "https://github.com/vasyakrg/talostpl"
  version "1.5.1"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/vasyakrg/talostpl/releases/download/v1.5.1/talostpl-darwin-amd64",
      verified: "github.com/vasyakrg/talostpl/"
    sha256 "6178a5573eedd67ddc489236b582c3e94dd5bd9ec7f812f48012d233c3f01cc2"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/vasyakrg/talostpl/releases/download/v1.5.1/talostpl-darwin-arm64",
      verified: "github.com/vasyakrg/talostpl/"
    sha256 "6631a696a26a3d1460cb8b0809602595bd40437eeb6ddcdbc9a48a05ca4c262a"
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
