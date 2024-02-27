resource "aws_api_gateway_rest_api" "spotmusic_api" {
  name        = "SpotMusicAPI"
  description = "API for SpotMusic Application"

}

resource "aws_api_gateway_deployment" "spotmusic_api_deployment" {
  rest_api_id = aws_api_gateway_rest_api.spotmusic_api.id
  stage_name  = "prod"
}
