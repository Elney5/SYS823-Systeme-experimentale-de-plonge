![Schema Systeme Plonge](Elise/Schema%20Systeme%20Plonge.md)
## Masse du système

$m_{bouteille}$ : Masse de la bouteille sans l'air à l'intérieur
$m_{tube}$ : Masse d'un tube sans l'air à l'intérieur + son bouchon
$m_{plomb}$ : Masse du plomb
$m_{\text{airb}}$ : Masse de l'air dans la bouteille
$m_{\text{airt}}$ : Masse de l'air dans un tube

$n_{airb}$ : quantité de molle d'air dans la bouteille
$n_{airt}$ : quantité de molle d'air dans un tube

$M_{air}$ : Masse molaire de l'air 


La masse totale du système est :
$$
\begin{equation}
\begin{aligned}
m_{total} &= m_{bouteille} + 3 m_{tube} + m_{plomb} + m_{airb} + 3 m_{airt}\\
&=m_{statique} + m_{airb} + 3m_{airt}\\
&= m_{statique} + (n_{airb} + 3n_{airt})M_{air}
\end{aligned}
\end{equation}
$$

$m_{\text{airb}} = n_{airb}M_{air}$
$m_{airt} = n_{airt}M_{air}$

## Volume du système

---
$V_{tube} = V_{paroi} + V_{bouchon} = V_{plein} - V_{cavite}$
$\boxed{V_{tube} = 0.00196m^{3}}$

$V_{plein} = A_{ext}h_{tube} = (\frac{0.168}{2})^{2}\pi \times 0.312 = 0.00692m^{3}$
$V_{cavite} = (\frac{145}{2})^{2}\pi \times(0.312-0.012)=0.00495m^{3}$
---
$\boxed{V_{bouteille} = 0.0227m^{3}}$
---
$\boxed{V_{plomb} = 0.0284h_{plomb}}$

---
$$
\boxed{

\begin{equation}
\begin{aligned}
V_{statique} &= 3V_{tube} + V_{bouteille}+V_{plomb}\\
&= 0.0286 m^{3} + 0.0284h_{plomb} 
\end{aligned}
\end{equation}
}

$$
---
$$
V_{airTube} = \frac{n_{airt}RT}{P_{tube}}
$$
## Pressions

$$
\begin{equation}
\begin{aligned}
P_{tube} &= P_{hydro}(z+h_{airt}+e_{bouchon})\\
&= P_{0} + \rho_{eau}g(z+h_{airt} + e_{bouchon})\\
&= P_{0} + \rho_{eau}g(z+e_{bouchon}) + \frac{\rho_{eau}gn_{airt}RT}{P_{tube}A_{int}}
\end{aligned}
\end{equation}

$$
$h_{airt} = \frac{n_{airt}RT}{P_{tube}A_{int}}$
$a = 1$
$b = - (P_{0} + \rho_{eau} g (z + e_{bouchon}))$
$c = - \frac{\rho_{eau}gn_{air}RT}{A_{int}}$

$$
\Delta = (P_{0} + \rho_{eau} g (z + e_{bouchon}))^{2} + 4 \times  \frac{\rho_{eau}gn_{air}RT}{A_{int}} > 0
$$
Car tout est positif est $P_{0} > 0$

$$
\begin{equation}
\begin{aligned}
P_{tube} &= \frac{P_{0} + \rho_{eau} g (z + e_{bouchon}) + \sqrt{ \Delta }}{2} \\
&= \frac{P_{0} 
+ \rho_{eau} g (z + e_{bouchon}) 
+ \sqrt{(P_{0} + \rho_{eau} g (z + e_{bouchon}))^{2} + 4 \times  \frac{\rho_{eau}gn_{air}RT}{A_{int}}}}{2}
\end{aligned}
\end{equation}
$$
## Bilan des forces

On regarde sur $\vec{z}$

### Poids

$\vec{p_{total}} = \vec{g}m_{total}=\vec{g}m_{statique} +\vec{g}m_{airb}+3\vec{g}m_{airt}$

### Poussée d'Archimède

$\vec{\Pi} = -(V_{statique} + V_{airt})\rho_{eau}\vec{g}$

### Newton

$\ddot{z} = \frac{\Pi - p_{total}}{m_{total}} = \frac{((V_{statique} + V_{airt})\rho_{eau}-1)}{m_{total}} g$
