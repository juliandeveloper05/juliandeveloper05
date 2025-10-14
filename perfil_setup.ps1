param()

$repos = @(
  @{ name="e-commerce-project-mp-2024"; desc="E-commerce completo con checkout MercadoPago, SSR/ISR, panel admin y auth."; topics="nextjs,typescript,react,tailwind,vercel,mercadopago,prisma,postgresql,ecommerce"; homepage="https://www.juliansotodev.xyz" },
  @{ name="mi-portfolio-2024";        desc="Portafolio con App Router, OG Images dinámicas, SEO técnico y Lighthouse 95."; topics="nextjs,react,tailwind,vercel,seo,og-image";                              homepage="" },
  @{ name="mercadopago-app";          desc="Integración MercadoPago: preferences, webhooks, notificaciones, server actions."; topics="nextjs,typescript,mercadopago,api,webhooks";                   homepage="" },
  @{ name="react-native-game-explorer"; desc="Explorador de juegos con RAWG API, navegación, paginación y caché offline.";   topics="react-native,typescript,expo,rawg,cache";                     homepage="" },
  @{ name="CodingTrivia";             desc="Juego para devs: detectá errores en snippets con timer y scoreboard.";           topics="javascript,game,education";                                   homepage="" },
  @{ name="Quadratic-Formula-Solver"; desc="Resolución de ecuaciones cuadráticas con pasos y validaciones de entrada.";      topics="javascript,education,math";                                    homepage="" }
)

foreach ($r in $repos) {
  Write-Host "  ${($r.name)}"
  $args = @("--description", $r.desc, "--add-topic", $r.topics)
  if ($r.homepage) { $args += @("--homepage", $r.homepage) }
  gh repo edit "juliandeveloper05/$($r.name)" @args
}

# dispara métricas del perfil
gh workflow run "Metrics" --repo juliandeveloper05/juliandeveloper05
