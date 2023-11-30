# Learn about building .NET container images:
# https://github.com/dotnet/dotnet-docker/blob/main/samples/README.md
FROM --platform=$BUILDPLATFORM mcr.microsoft.com/dotnet/sdk:8.0-bookworm-slim AS build
ARG TARGETARCH
WORKDIR /source

# copy csproj and restore as distinct layers
COPY *.csproj .
RUN dotnet restore -a $TARGETARCH

# copy and publish app and libraries
COPY . .
RUN dotnet publish -a $TARGETARCH --no-restore -o /app


# final stage/image
FROM mcr.microsoft.com/dotnet/runtime:8.0-bookworm-slim
WORKDIR /app
COPY --from=build /app .
USER $APP_UID
ENTRYPOINT ["./dotnetapp"]

# Install PowerShell global tool
RUN powershell_version=7.4.0 \
    && curl -fSL --output PowerShell.Linux.x64.$powershell_version.nupkg https://powershellinfraartifacts-gkhedzdeaghdezhr.z01.azurefd.net/tool/$powershell_version/PowerShell.Linux.x64.$powershell_version.nupkg \
    && powershell_sha512='b7e5fcd8881309093e0010c559ff416ab8c51e82c6c348effccc6b9eb3bb345821f3f91b44678fc2eea2a86cffcd163909ab045c0fe70a168d01806ca15f7138' \
    && echo "$powershell_sha512  PowerShell.Linux.x64.$powershell_version.nupkg" | sha512sum -c - \
    && mkdir -p /usr/share/powershell \
    && dotnet tool install --add-source / --tool-path /usr/share/powershell --version $powershell_version PowerShell.Linux.x64 \
    && dotnet nuget locals all --clear \
    && rm PowerShell.Linux.x64.$powershell_version.nupkg \
    && ln -s /usr/share/powershell/pwsh /usr/bin/pwsh \
    && chmod 755 /usr/share/powershell/pwsh \
    # To reduce image size, remove the copy nupkg that nuget keeps.
    && find /usr/share/powershell -print | grep -i '.*[.]nupkg$' | xargs rm
