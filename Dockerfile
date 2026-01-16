FROM debian:12-slim

# Nodige dependencies voor Godot headless/binary (uitbreiden indien nodig)
RUN apt-get update && apt-get install -y \
 ca-certificates \
 curl \
 libx11-6 \
 libxcursor1 \
 libxinerama1 \
 libgl1-mesa-glx \
 libglu1-mesa \
 libasound2 \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Kopieer alle projectbestanden (incl. DevopsGame.x86_64) naar /app
COPY . .

# Maak de Godot-server executable
RUN chmod +x ./DevopsGame.x86_64

# Expose poort 8080
EXPOSE 8080

# Start de Godot dedicated server
CMD ["./DevopsGame.x86_64"]
