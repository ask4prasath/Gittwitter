class GitLocal 
  #include Git

  attr_reader :repo

  def initialize
    @repo = Git.open(Core::GitApplication.root)
  end

  def current_repo
    @repo.repo.to_s
  end

  def log

  end

end