output "iam_result" {
  value = [for name in var.username : name]
}

output "for_directive_index_if_else_strip" {
  value = <<EOF
%{~for i, name in var.username~}
  ${name}%{if i < length(var.username) - 1}, %{else}.%{endif}
%{~endfor~}
EOF
}