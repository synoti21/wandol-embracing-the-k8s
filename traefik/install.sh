helm install traefik traefik/traefik \
  --namespace=traefik \
  --create-namespace \
  --set="additionalArguments={--certificatesresolvers.${resolverName}.acme.tlschallenge,--certificatesresolvers.${resolverName}.acme.email={email},--certificatesresolvers.${resolverName}.acme.storage=/data/acme.json}" \
  --set="service.type=NodePort" \
  --set="ports.websecure.tls.enabled=true"

