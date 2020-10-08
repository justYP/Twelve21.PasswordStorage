FROM mcr.microsoft.com/dotnet/core/sdk:3.1
VOLUME [ "/app" ]

WORKDIR /app

COPY ./Twelve21.PasswordStorage .

RUN dotnet build 

ENTRYPOINT [ "/usr/bin/dotnet", "run", "a2c" ]