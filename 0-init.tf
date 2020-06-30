data "http" "example" {
  url = "https://ip-ranges.atlassian.com/"

  # Optional request headers
  request_headers = {
    Accept = "application/json"
  }
}

resource "local_file" "foo" {
    content     = "${data.http.example.body}"
    filename = "output.json"
}



