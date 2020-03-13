class UserCreation
  def create_user
    new_pseudo = ""
    loop do
      new_pseudo = Array.new(3){[*"A".."Z"].sample}.join
      break unless User.where(name: new_pseudo).exists?
    end
    User.create(name:new_pseudo)
    new_pseudo
  end
end
