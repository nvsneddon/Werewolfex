defmodule WerewolfBot.Commands.OptionTypes do
  @moduledoc """
  Constants for command option types.
  """

  @sub_command 1
  @sub_command_group 2
  @string 3
  @integer 4
  @boolean 5
  @user 6
  @channel 7
  @role 8
  @mentionable 9
  @number 10
  @attachment 11

  def sub_command, do: @sub_command
  def sub_command_group, do: @sub_command_group
  def string, do: @string
  def integer, do: @integer
  def boolean, do: @boolean
  def user, do: @user
  def channel, do: @channel
  def role, do: @role
  def mentionable, do: @mentionable
  def number, do: @number
  def attachment, do: @attachment
end
