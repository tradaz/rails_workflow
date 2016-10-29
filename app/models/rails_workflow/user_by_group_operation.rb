module RailsWorkflow
  class UserByGroupOperation < Operation
    def can_start?
      false
    end

    def can_be_assigned?(user)
      super && (template.group == user.group.to_s)
    end
  end
end
