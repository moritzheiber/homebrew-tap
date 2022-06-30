# frozen_string_literal: true

# The main formula
class Crowbar < Formula
  desc "Your trusty tool for retrieving AWS credentials securely via SAML"
  homepage "https://github.com/moritzheiber/crowbar"
  url "https://github.com/moritzheiber/crowbar/releases/download/v0.4.7/crowbar-x86_64-macos"
  version "0.4.7"
  sha256 "a563e121c91a2a0079b5fa5c2793216a4593e9b9dc7f898ddd72a30624a25902"

  def install
    mv "crowbar-x86_64-macos", "crowbar"
    bin.install "crowbar"
  end

  test do
    system "#{bin}/crowbar", "--version"
  end
end
