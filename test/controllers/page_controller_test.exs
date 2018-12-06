defmodule Rumbl.PageControllerTest do
  use Rumbl.ConnCase

  test "GET /", %{conn: conn} do
    conn = get conn, "/"
    assert html_response(conn, 200) =~"<!DOCTYPE html>\n<html lang=\"en\">\n  <head>\n    <meta charset=\"utf-8\">\n    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n    <meta name=\"description\" content=\"\">\n    <meta name=\"author\" content=\"\">\n\n    <title>Hello Rumbl!</title>\n    <link rel=\"stylesheet\" href=\"/css/app.css\">\n  </head>\n\n  <body>\n  \n    <div class=\"container\">\n     <div class=\"header\">\n<ol class=\"breadcrumb text-right\">\n<li><a href=\"/users/new\">Register</a></li>\n<li><a href=\"/sessions/new\">Log in</a></li>\n</ol>\n<span class=\"logo\"></span>\n</div>\n\n      <p class=\"alert alert-info\" role=\"alert\"></p>\n      <p class=\"alert alert-danger\" role=\"alert\"></p>\n\n      <main role=\"main\">\n<div class=\"jumbotron\">\n  <h2>Welcome to Rumbl.io</h2>\n  <p class=\"lead\">Rumbl out loud</p>\n</div>      </main>\n\n    </div> <!-- /container -->\n    <script src=\"/js/app.js\"></script>\n  </body>\n</html>\n"
  end
end
