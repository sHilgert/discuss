defmodule Discuss.UserSocket do
  use Phoenix.Socket

  channel "comment:*", Discuss.CommentsChannel
  transport :websocket, Phoenix.Transports.WebSocket

  def connect(_params, socket) do
    {:ok, socket}
  end

  def id(_socket), do: nil
end
