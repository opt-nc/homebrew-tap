cask "geol" do
  name "geol"
  desc "geol, the cli to efficiently display product end-of-life dates in your terminal using the endoflife.date API."
  homepage "https://github.com/opt-nc/geol"
  version "2.1.0"

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
      sha256 "11927d547d572ae06045952884e982d2142d08ec78111b80f37dcc19bf80bef9
98a89dc1b879f7dd43977c8a439942c0bc655f1165b8714dd20c09eac3a9a9f3"
    end
    on_arm do
      url "https://github.com/opt-nc/geol/releases/download/v#{version}/geol_Darwin_arm64.tar.gz",
        using: :homebrew_curl
      sha256 "d60ab5d741a24d9f2d2a7a558ec994b60b169d7ca9f365b0397dd18526878df7
6c244186a215214899192d75cbf590352224ff01deb4c4c90aff0acbffa94afa"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/opt-nc/geol/releases/download/v#{version}/geol_Linux_x86_64.tar.gz",
        using: :homebrew_curl
      sha256 "56f9028f25f88aa6821193dbf1b982dee01d1c40bf6149e657013ace1fdf4ed9
5699d08d9a4b938dbf9edad81c90503d09cdfc45ca0fe0384a03ffbf556c371c"
    end
    on_arm do
      url "https://github.com/opt-nc/geol/releases/download/v#{version}/geol_Linux_arm64.tar.gz",
        using: :homebrew_curl
      sha256 "5558a21926489aefe23931facb577fad8fee574e069eec091e12fcd4767bccf1
65ae43c51e15fb2f447c4c5755feed714b07549acf78113ea0120092e3f9f159"
    end
  end

  # No zap stanza required
end
