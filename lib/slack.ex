defmodule Slack do
  def post_notification(post) do
    endpoint = System.get_env("slack_post_endpoint")
    text = "#{post.developer_id} #{post.title}"

    spawn(
      fn ->
        HTTPoison.post("https://hooks.slack.com" <> endpoint, "{\"text\": \"#{text}\"}")
      end
    )
  end
end
