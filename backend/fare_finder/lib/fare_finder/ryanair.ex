defmodule Ryanair do
  use HTTPoison.Base

  def process_url(_) do
    base_url()
    |> URI.parse()
    |> Map.put(:query, URI.encode_query(%{
      departureAirportIataCode: "STN",
      language: "en",
      limit: 16,
      market: "en-gb",
      offset: 0,
      outboundDepartureDateFrom: "2018-12-15",
      outboundDepartureDateTo: "2018-12-30",
      priceValueTo: 50
    }))
    |> URI.to_string()
  end

  def process_request_headers(headers) do
    Dict.put headers, :"User-Agent", "ryanair-bot"
  end

  def process_response_body(body) do
    body |> Poison.decode!
  end
  
  defp base_url do
    "https://api.ryanair.com/farefinder/3/oneWayFares"
  end
end
