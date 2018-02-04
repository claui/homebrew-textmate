module Hbc
  class DSL
    def tmbundle(*args)
      klass = Hbc::Artifact::Tmbundle
      if [
        *artifacts.map(&:class), klass
      ].include?(Artifact::StageOnly) &&
        (artifacts.map(&:class) &
        ACTIVATABLE_ARTIFACT_CLASSES).any?
        raise CaskInvalidError.new(
          cask,
          "'stage_only' must be the only activatable artifact."
        )
      end

      artifacts.add(klass.from_args(cask, *args))
    rescue CaskInvalidError
      raise
    rescue StandardError => e
      raise CaskInvalidError.new(
        cask, "invalid '#{klass.dsl_key}' stanza: #{e}"
      )
    end
  end
end
