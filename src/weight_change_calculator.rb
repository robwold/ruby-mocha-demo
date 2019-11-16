require_relative './user_weight_dao'

class WeightChangeCalculator
  def self.determine_user_weight_change(user_id, new_weight)
    old_weight = UserWeightDao.get_previous_weight(user_id)
    UserWeightDao.save_user_weight(user_id, new_weight)
    calculate_weight_change(old_weight, new_weight)
  end

  private

  def self.calculate_weight_change(old_weight, new_weight)
    new_weight - old_weight
  end
end