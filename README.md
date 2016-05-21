Adds a development environment to the [.NET Core Docker Image](https://hub.docker.com/r/microsoft/dotnet/).
* [Visual Studio Code](https://code.visualstudio.com/)
* [Ionide](http://ionide.io/)
    * [Ionide F#](https://marketplace.visualstudio.com/items?itemName=Ionide.Ionide-fsharp)
    * [Ionide Paket](https://marketplace.visualstudio.com/items?itemName=Ionide.Ionide-Paket)
    * [Ionide FAKE](https://marketplace.visualstudio.com/items?itemName=Ionide.Ionide-FAKE)
* [C#](https://marketplace.visualstudio.com/items?itemName=ms-vscode.csharp)
* [Mono](http://www.mono-project.com/) is installed for now to support the Ionide language service
* [Xpra](https://xpra.org/) for displaying Visual Studio Code

## Required Software
Docker is needed. To display the Visual Studio Code windows, an X11 Server or Xpra is needed.
Xpra is recommended, especially if running the image from another computer.

## Running
```
docker run --rm -it -p 6100:6100 ctaggart/dotnet-vscode
. start-xpra.sh
code .
```

## Related Blog Posts
* 2015-05 [Visual Studio Code served from Docker](http://blog.ctaggart.com/2016/05/visual-studio-code-served-from-docker.html)
* 2015-05 [RustyCode Running on Docker in Azure & Displaying Locally](http://blog.ctaggart.com/2016/05/rustycode-running-on-docker-in-azure.html)