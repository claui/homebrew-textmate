module Hbc
  class DSL
    def tmbundle(*args)
      artifacts[:tmbundle].add(args)
    end
  end
end
