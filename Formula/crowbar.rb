# frozen_string_literal: true

# The main formula
class Crowbar < Formula
  desc 'Your trusty tool for retrieving AWS credentials securely via SAML'
  homepage 'https://github.com/moritzheiber/crowbar'
  version '0.3.3'
  bottle :unneeded

  if OS.mac?
    url 'https://github.com/moritzheiber/crowbar/releases/download/v0.3.3/crowbar-x86_64-macos'
    sha256 'ff96f81f93131446c86f0dd49a4e98cf15d095f474414de8a14a413175522c4e'
  end

  def install
    mv 'crowbar-x86_64-macos', 'crowbar'
    bin.install 'crowbar'
  end

  test do
    system "#{bin}/crowbar --version"
  end
end
