output "server_ipv4" {
  description = "Public IPv4 address of the portfolio server"
  value       = hcloud_server.portfolio.ipv4_address
}
