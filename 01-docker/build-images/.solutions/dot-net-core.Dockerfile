FROM microsoft/dotnet:2.2-sdk-alpine AS build-env

LABEL APP Mizzen.WebApi
LABEL MAINTAINER binura.g@platformer.com

WORKDIR /app

# Copy csproj and restore as distinct layers
COPY *.csproj ./
RUN dotnet restore

# Copy everything else and build
COPY . ./
RUN dotnet publish -c Release -o out

# Build runtime image
FROM microsoft/dotnet:2.2-aspnetcore-runtime-alpine as runtime-env

RUN apk update && apk add libc6-compat

WORKDIR /app
COPY --from=build-env /app/out .

ENV ASPNETCORE_ENVIRONMENT Development
ENV ASPNETCORE_URLS http://+:5000

EXPOSE 5000

ENTRYPOINT ["dotnet", "HelloWorld.dll"]
