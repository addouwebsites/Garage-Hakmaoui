$port    = 3000
$rootDir = $PSScriptRoot

$listener = [System.Net.HttpListener]::new()
$listener.Prefixes.Add("http://localhost:$port/")
$listener.Start()

Write-Host ""
Write-Host "  Garage Hakmaoui - Dev Server"
Write-Host "  Listening at: http://localhost:$port"
Write-Host "  Press Ctrl+C to stop."
Write-Host ""

$mimeTypes = @{
    ".html"  = "text/html; charset=utf-8"
    ".css"   = "text/css; charset=utf-8"
    ".js"    = "application/javascript; charset=utf-8"
    ".json"  = "application/json; charset=utf-8"
    ".png"   = "image/png"
    ".jpg"   = "image/jpeg"
    ".jpeg"  = "image/jpeg"
    ".gif"   = "image/gif"
    ".svg"   = "image/svg+xml"
    ".ico"   = "image/x-icon"
    ".woff2" = "font/woff2"
    ".woff"  = "font/woff"
    ".ttf"   = "font/truetype"
}

try {
    while ($listener.IsListening) {
        $ctx      = $listener.GetContext()
        $request  = $ctx.Request
        $response = $ctx.Response

        $urlPath = $request.Url.LocalPath
        if ($urlPath -eq "/" -or $urlPath -eq "") { $urlPath = "/index.html" }

        $filePath = Join-Path $rootDir ($urlPath.TrimStart('/').Replace('/', '\'))

        if (Test-Path $filePath -PathType Leaf) {
            $ext         = [System.IO.Path]::GetExtension($filePath).ToLower()
            $contentType = if ($mimeTypes.ContainsKey($ext)) { $mimeTypes[$ext] } else { "application/octet-stream" }
            $bytes       = [System.IO.File]::ReadAllBytes($filePath)

            $response.StatusCode      = 200
            $response.ContentType     = $contentType
            $response.ContentLength64 = $bytes.Length
            $response.OutputStream.Write($bytes, 0, $bytes.Length)
        } else {
            $indexPath = Join-Path $rootDir "index.html"
            if (Test-Path $indexPath) {
                $bytes = [System.IO.File]::ReadAllBytes($indexPath)
                $response.StatusCode      = 200
                $response.ContentType     = "text/html; charset=utf-8"
                $response.ContentLength64 = $bytes.Length
                $response.OutputStream.Write($bytes, 0, $bytes.Length)
            } else {
                $response.StatusCode = 404
            }
        }

        Write-Host "  [$($request.HttpMethod)] $urlPath"
        $response.OutputStream.Close()
    }
} finally {
    $listener.Stop()
    Write-Host "Server stopped."
}
