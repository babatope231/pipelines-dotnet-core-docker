FROM mcr.microsoft.com/dotnet/sdk:6.0
 
# Set the timezone environment variable
ENV TZ="Africa/Johannesburg"
 
RUN ls -l
# Copy the published application files to the container
COPY ./ ./
 
# Set the working directory inside the container
WORKDIR /app
RUN ls -l
# Expose port 80 for the application
EXPOSE 80
 
# Set the entry point for the container
ENTRYPOINT ["dotnet", "pipelines-dotnet-docker.dll", "--environment=Prod"]
