
![Schema Systeme Plonge](Cours_Ets/Hiver%202025/Modélisation,%20automatisation%20de%20procédés%20industriels/Projet/Modélisation/Schema%20Systeme%20Plonge.md)
# Partie Modélisation

On ne peut pas recharger la bonbonne centrale. 2 types de valves : de la bonbonne centrale vers les tubes et des tubes vers l'extérieur.
# Volume d'air - Question 1

## Bonbonne

- Volume
$$
V = 10 \text{ litres} = 10^{-3} m^{3}
$$
- Pression
$$
P_{b} = 232 \text{ bars} = 232\text{ x }10^{5}Pa
$$
- Température

$$
T = 20°C = 293,15\text{K}
$$

On suppose que l'air est un gaz parfait 

$$
n_{b} = \frac{PV}{RT} = 95,22 \text{ mol}
$$

## Tube

- Pression
$$
P_{tubes} =  101300 Pa
$$

- Volume
$$
V_{\int} = \left( \frac{d_{int}}{2} \right)^{2}\pi*(h -bouchon) = 0,00495 \text{ m}^{3}
$$

$$
n_{tube} = \frac{PV}{RT} = 0,21 \text{ mol}
$$
# Volume des équipements

# Bonbonne

D'après l'énoncé,

$$
\begin{cases}
h = 0.8 \text{ mètres} \\
diamètre = 0.19 \text{ mètres}
\end{cases}
$$

- Volume 

$$
V = \left( \frac{D}{2} \right)^{2}\pi h = 0.0227\text{ m}^{3}
$$
- Tube en PVC

D'après l'énoncé,

$$
\begin{cases}
h = 0.312 \text{ mètres} \\
diamètre = 0.168 \text{ mètres}
\end{cases}
$$


$$
V_{ext} = \left( \frac{d_{ext}}{2} \right)^{2}\pi h = 0.00692 \text{ m}^{3}
$$


# Masse des équipements

## Bonbonne + équipements

- Bonbonne à vide: $m_{b}=10\text{ kg}$
- équipements: $m_{e}=2.5\text{ kg}$
- air: $n_{bonbonne}*29=2.76\text{ kg}$

## Tube en PVC

# Volume du tube

- Volume du tube en PVC 

$$
V_{PVC} = V_{ext} - V_{int} = 0.00196 \text{ m}^{3}
$$

- Poids du Tube

$$
m_{PVC} = \rho_{PVC}V_{PVC} = 2.47 \text{ kg} 
$$
- Masse d'air

$$
air: n_{tube}*29=6\text{ x }10^{-3}kg
$$
- Volume du bouchon

$$
V_{bouchon}= \left( \frac{0.145}{2} \right)^{2}*0.012\pi = 1.98\text{ x }10^{-4}\text{ m}^{3}
$$

- Masse du bouchon

$$
m_{bouchon} = \rho_{PVC}V_{bouchon}= 0.27 \text{ kg}
$$

# Masse totale

### Masses statiques

- Bonbonne + équipements : $m_{e}=12.5\text{ kg}$
- Tubes en PVC: $m_{tubes}= 7.41\text{ kg}$
- Bouchon: $m_{bouchons}= 0.81\text{ kg}$

### Masse variables

- Masse air bonbonne : $m_{air,bonbonne}= 2.76\text{ kg}$
- Masse air PVC : $m_{air,PVC}= 6\text{ x }10^{-3}kg$

$M_{t}= 23.48 \text{ kg}$

## Poids

$$
||P|| = 230,4 N
$$

## Poussée d'Archimède 

$$
||\Pi|| = \rho_{eau}*V_{bonbonne}*g + 3*V_{ext}*\rho_{eau}*g = 431.64
N$$


## Calcul de a masse en plomb

- Volume de plomb

$$

V_{\text{disque} }= \left( \frac{0.19}{2} \right)^{2}\pi h_{\text{disque}} = 0.02833 \text{ }h_{ \text{disque}}
$$

- masse du plomb

$$
m_{plomb} = \rho_{plomb}V_{\text{disque}} = 321.80 \text{ }h_{ \text{disque}}
$$

J'obtiens donc l'équation suivante

$$
\begin{equation}
\begin{aligned}
||P|| + m_{plomb}g = ||\Pi|| + \rho_{eau}*V_{plomb}g  \\\Leftrightarrow h_{ \text{disque}} = \frac{||\Pi|| - ||P||}{321.80g - 0.02833\rho_{eau}g}
\end{aligned}
\end{equation}

$$

J'obtiens finalement $h_{\text{disque}}=7 cm$.
$$

$$
## 1**ère équation

- Deuxième principe de Newton

$$
\begin{equation}
\begin{aligned}
M_{t}\ddot{z}= -M_{t}g + \rho_{eau}V_{immergée}g \Leftrightarrow \ddot{z} = g\left( \frac{\rho_{eau}V_{immergée}}{M_{t}}-1 \right)
\end{aligned}
\end{equation}
$$

- Masse totale 

$$
M_{t} = m_{statique} + m_{variable}(t) \Leftrightarrow m_{statique} + (n_{bonbonne} + n_{tubes})M_{air}
$$

- Volume immergée

$$
V_{immergé} = V_{statique} + V_{variable}(z)
$$

avec 

$V_{statique}=3V_{tubes}+ V_{bonbonne}+ V_{plomb}$

$$
V_{variables}= V_{tubes} = \frac{n_{tubes}RT}{P_{tubes}} \approx \frac{n_{tubes}RT}{P_{hydro}} = \frac{n_{tubes}RT}{P_{0} + \rho_{eau}g_{0}z} 
$$





Par la statique des fluides, on obtient, l'équation suivante
$$
P_{tube}= P_{hydro}(z+h)
$$

Or d'après la loi des gaz parfaits.

$$
P_{tube}= \frac{n_{tube}*R*T}{A(h-e_{bouchon})} \Leftrightarrow  h = \frac{n_{tube}*R*T}{AP_{tube}} + e_{bouchon}
$$
$$
P_{tubes} = P_{0} + \rho_{eau}g_{0}(z+h) = P_{0} + \rho_{eau}g_{0}(z+ \frac{n_{tube}*R*T}{AP_{tubes}} + e_{bouchon})
$$
Ce qui donne

$$
P_{tube}^{2} - P_{tube}(P_{0}+\rho_{eau}g_{0}z + \rho_{eau}g_{0}e_{bouchon²}) - \frac{\rho_{eau}g_{0}n_{tube}RT}{A} = 0
$$

# Discriminant

$$
\Delta = (P_{0}+ \rho_{eau}g_{0}z + \rho_{eau}ge_{b})^{2} + 4\frac{\rho_{eau}g_{0}n_{tube}RT}{A} 
$$

La seule solution possible pour que la pression soit toujours positive est la suivante:


$$
P_{tubes} = \frac{P_{0}+ \rho_{eau}gz + \rho_{eau}ge_{b} + \sqrt{ (P_{0}+ \rho_{eau}gz + \rho_{eau}g_{0}e_{b})^{2} + 4\frac{\rho_{eau}g_{0}n_{tube}RT}{A} }}{2}
$$



### Entrées commandables

Si je considère les entrées commandables suivantes,

$$u_{1}=\begin{cases}
1 \text{ la valve qui évacue de la bonbonne vers les tubes en PVC est ouverte}\\  
0 \text{ la valve est fermé}
\end{cases}$$

$$u_{2}=\begin{cases}
1 \text{ la valve qui évacue des tubes en PVC vers l'extérieur est ouverte}\\  
0 \text{ la valve est fermé}
\end{cases}$$

#### Modélisation de la variation 

$n_{1}(t)$: nombre de moles évacués par seconde de la bonbonne vers les tubes en PVC
$n_{2}(t)$: nombre de moles évacué par seconde des tubes en PVC vers l'extérieur


On fait alors les bilans de matière entre $t$ et $t+dt$ en moles dans la bonbonne:

$$
n_{b}(t+dt) = n_{b}(t) - n_{1}(t)u_{1}dt
$$
Par développement limité au premier ordre,

$$
\frac{dn_{b}}{dt}= -u_{1}n_{1}(t)
$$

Or d'après les équations que l'on retrouve dans l'énoncé on obtient l'équation suivante:

$$
\frac{dn_{b}}{dt}= -0.0002\sqrt{ P_{b}-P_{tubes} }u_{1}
$$

On fait alors les bilans de matière entre $t$ et $t+dt$ en moles dans les tubes en PVC:

$$
n_{tube}(t+dt) = n_{tube}(t) + n_{1}(t)u_{1}dt - n_{2}(t)u_{2}dt
$$

Par développement limité au premier ordre,

$$
\frac{dn_{tube}}{dt}= 0.0002\sqrt{ P_{b}-P_{tubes} }u_{1}(t)  - 0.0002\sqrt{ P_{tubes}-P_{hydro} }u_{2}(t)
$$


### Modèle d'états

On définit les états suivants 

$$
x = \begin{bmatrix}
z \\
\dot{z} \\
n_{B} \\
n_{tubes}
\end{bmatrix}
$$

et les équations différentielles suivantes


$$
\ddot{z} = g\left( \frac{\rho_{eau}V_{immergée}}{M_{t}}-1 \right) = g\left( \frac{\rho_{eau}(V_{statique} + \frac{n_{tubes}RT}{P_{0} + \rho_{eau}g_{0}z})}{m_{statique} + (n_{bonbonne} + n_{tubes})M_{air}}-1 \right)
$$

$$
P_{tubes} = \frac{P_{0}+ \rho_{eau}gz + \rho_{eau}ge_{b} + \sqrt{ (P_{0}+ \rho_{eau}gz + \rho_{eau}g_{0}e_{b})^{2} + 4\frac{\rho_{eau}g_{0}n_{tube}RT}{3A} }}{2}
$$

$$
\dot{n_{b}}= -0.0002\sqrt{ \frac{n_{B}RT}{V_{B}}-P_{tubes} }u_{1}
$$

Et 

$$
\dot{n_{tube}}= 0.0002\sqrt{ \frac{n_{B}RT}{V_{B}}-P_{tubes} }u_{1}(t)  - 0.0002\sqrt{ P_{tubes}- (P_{0} + \rho_{eau}g_{0}z)}u_{2}(t)
$$
