{{- define "nginx-rollout-poc.name" -}}
{{- .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{- define "nginx-rollout-poc.fullname" -}}
{{- printf "%s-%s" .Release.Name (include "nginx-rollout-poc.name" .) | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{- define "nginx-rollout-poc.labels" -}}
app.kubernetes.io/name: {{ include "nginx-rollout-poc.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}
