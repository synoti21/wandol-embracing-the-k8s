helm install traefik traefik/traefik \
  --namespace=traefik \
  --create-namespace \
  --set="additionalArguments={--certificatesresolvers.${resolverName}.acme.tlschallenge,--certificatesresolvers.${resolverName}.acme.email=${email},--certificatesresolvers.${resolverName}.acme.storage=/data/acme.json, --entrypoints.web.http.redirections.entryPoint.to=websecure, --entrypoints.web.http.redirections.entryPoint.scheme=https, --entrypoints.web.http.redirections.entrypoint.permanent=true, --api.dashboard=true}" \
  --set="service.type=NodePort" \
  --set="ports.websecure.tls.enabled=true"


