class Morpion

  def initialize
    @a1 = " "
    @a2 = " "
    @a3 = " "
    @b1 = " "
    @b2 = " "
    @b3 = " "
    @c1 = " "
    @c2 = " "
    @c3 = " "
  end

  def check_choice(choice)
    choice = choice.downcase
    if (choice == "a1" && @a1 == " ") || (choice == "a2" && @a2 == " ") || (choice == "a3" && @a3 == " ") || (choice == "b1" && @b1 == " ") || (choice == "b2" && @b2 == " ") || (choice == "b3" && @b3 == " ") || (choice == "c1" && @c1 == " ") || (choice == "c2" && @c2 == " ") || (choice == "c3" && @c3 == " ")
      return true
    else
      return false
    end
end