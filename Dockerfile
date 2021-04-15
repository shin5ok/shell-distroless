# FROM debian:stable-20210408-slim as bb
FROM busybox:1.33.0 as bb


FROM gcr.io/distroless/python3-debian10
COPY --from=bb /bin/sh /bin/ 
COPY --from=bb /bin/ls /bin/ 
COPY --from=bb /bin/more /bin/

