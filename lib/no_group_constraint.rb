# frozen_string_literal: true

class NoGroupConstraint
  def matches?(request)
    return false unless request.format.html?
    path = request.fullpath.downcase
    group_id = path.split("/")[3]
    !Group.where(name: group_id).exists?
  end
end
