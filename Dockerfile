# Use the official Golang image as the base image
FROM golang:1.23-bookworm AS builder

# Set the working directory inside the container
WORKDIR /app

# Copy go.mod and go.sum files to the working directory
COPY go.mod go.sum ./

# Download all dependencies
RUN go mod download

# Copy the source code to the working directory
COPY . .

# RUN go env -w GO111MODULE=off

# Build the Go application
RUN go build -o myapp



# Use a minimal base image for the final container
FROM scratch

# Copy the built binary from the builder stage
COPY --from=builder /app/myapp /app/myapp

# Expose port 8080 for the application
EXPOSE 8080

# Command to run the application
CMD ["/app/myapp"]

# docker build -t andrerozario/fullcycle .
# docker run -it andrerozario/fullcycle
# docker push andrerozario/fullcycle:latest