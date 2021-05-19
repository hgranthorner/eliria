defmodule Eliria.Users.Guardian do
  use Guardian, otp_app: :eliria
  alias Eliria.Users

  def subject_for_token(user, _claims) when is_struct(user, Users.User) do
    {:ok, to_string(user.id)}
  end

  def resource_from_claims(%{"sub" => id}) do
    user = Users.get_user!(id)
    {:ok, user}
  rescue
    Ecto.NoResultsError -> {:error, :resource_not_found}
  end
end