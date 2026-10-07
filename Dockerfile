FROM python:3.13-alpine
WORKDIR /app
COPY dist/ /app/dist/
USER 10001:10001
EXPOSE 8080
CMD ["sh", "-c", "exec python -m http.server ${PORT:-8080} --bind 0.0.0.0 --directory /app/dist"]
