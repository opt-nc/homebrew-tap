cask "geol" do
  name "geol"
  desc "geol, the cli to efficiently display product end-of-life dates in your terminal using the endoflife.date API."
  homepage "https://github.com/opt-nc/geol"
  version "2.17.0"

  livecheck do
    skip "Auto-generated on release."
  end

  binary "geol"
  manpage "manpages/geol.1.gz"
  bash_completion "completions/geol.bash"
  zsh_completion "completions/geol.zsh"
  fish_completion "completions/geol.fish"

  on_macos do
    on_intel do
      url "https://github.com/opt-nc/geol/releases/download/v#{version}/geol_Darwin_x86_64.tar.gz",
        using: :homebrew_curl
      sha256 "8edb325eb84b24596d5ecb7508c7a36d7186193f04cbb273f02183e5abdd7b12"
    end
    on_arm do
      url "https://github.com/opt-nc/geol/releases/download/v#{version}/geol_Darwin_arm64.tar.gz",
        using: :homebrew_curl
      sha256 "c1fa4068927c0809acbb01376ab2d9ffe01cfc0b484757553f42267e09f94e5c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/opt-nc/geol/releases/download/v#{version}/geol_Linux_x86_64.tar.gz",
        using: :homebrew_curl
      sha256 "5fca7178f7ee4ba2c2227a380cb4d2dde945d24252eaf97174deaca8296f4b28"
    end
    on_arm do
      url "https://github.com/opt-nc/geol/releases/download/v#{version}/geol_Linux_arm64.tar.gz",
        using: :homebrew_curl
      sha256 "944d0b63586a87ac2b2cd494c31c9bf2badd7b372330ebdc9c99db639d00cc0f"
    end
  end

  # No zap stanza required
end
