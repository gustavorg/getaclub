FROM mcr.microsoft.com/dotnet/sdk:5.0-buster-slim AS build-env
WORKDIR /app
ENV ASPNETCORE_URLS="http://localhost:5000"
ENV ASPNETCORE_ENVIRONMENT="Development"
EXPOSE 5000
# Copy csproj and restore as distinct layers
COPY *.csproj ./
RUN dotnet restore
 
# Copy everything else and build
COPY . ./
#RUN dotnet publish -c Release -o out
RUN dotnet publish -c Release -o out AcmeApi.csproj

# Build runtime image
FROM mcr.microsoft.com/dotnet/aspnet:5.0-buster-slim
WORKDIR /app
COPY --from=build-env /app/out .
ENTRYPOINT ["dotnet", "AcmeApi.dll","http://localhost:5000"]