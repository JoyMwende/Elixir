# Strings
defmodule AllStrings do
  # function to trim a string
  def trim_string(value) do
    String.trim(value)
  end
  # in cmd AllStings.trim_string("Hello ") testing the above function
  # output: Hello
  # That is it trims the last space after hello

  # function to get first letter of a string using piping
  def first_letter(value) do
    String.trim(value)
    |> String.first() #takes one argument but since it's in a pipe it will take the value given in the function
  end

  # function to capitalize first letter of a string
  def initial(value) do
    # first_letter(value)
    # |> String.capitalize()
    # alternatively
    # first_letter(value) |> String.capitalize()
    # or
    "#{first_letter(value) |> String.capitalize()}. " #this you can put space between strings e.g "B. E."
  end

  # function to capitalize first letter of a string and show the whole string
  def initials(full_name) do
    list = String.split(full_name) #divides a strng into substrings
    # list
    # output: ["blork", "erlang"]
    # grabbing first letter fro initial function i.e mapping theough a list
    Enum.map(list, fn name ->
      initial(name)
      # output: "B" "E"
    end)
    |> List.to_string() # combines strings  output: "BE"
    |> String.trim()
  end

  def display_saucer do
    IO.puts(build_saucer())
  end

  defp build_saucer() do
    """

                        %%%%%%%%%%%%%%%%%%%%
                   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
          ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,
      ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,
    ************************************************************
        ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,
           ,,,&&&,,,,,,&&&,,,,,,&&&,,,,,,&&&,,,,,,&&&,,,
                ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,

    """
  end

  def display_customized_spacecraft(full_name) do
    IO.puts(customized_spacecraft(full_name))
  end
  # challenge: take asteriks line and in the middle
  # Hint: String.replace/2
  defp customized_spacecraft(full_name) do
    spacecraft = "***************************** #{initials(full_name)}'s SPACECRAFT *******************************"
    "#{build_saucer()}"
    |> String.replace("************************************************************", spacecraft)
  end
end
