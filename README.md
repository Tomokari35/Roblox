# 🎮 Roblox Lua Scripts

Bienvenue sur mon dépôt GitHub 👋  
Ici je partage mes **scripts Roblox en Lua**, principalement orientés **serveur**, **systèmes d’argent**, **shop**, **GUI**, et **mécaniques de jeu**.

---

## 📂 Contenu du dépôt

✔ Scripts serveur sécurisés  
✔ Systèmes d'argent (Money / Cash)  
✔ DataStore (sauvegarde joueur)  
✔ Shops  
✔ Scripts GUI  
✔ Systèmes automatiques (salaire, récompenses, etc.)

---

## 🧠 Technologies utilisées

- **Lua**
- **Roblox Studio**
- **DataStoreService**
- **RemoteEvents**
- Scripts **Server-side uniquement**

---

## 🔐 Sécurité

Tous les scripts importants sont :
- exécutés **côté serveur**
- protégés contre les exploits
- sans modification directe depuis les LocalScripts

---

## 🚀 Installation

1. Ouvre **Roblox Studio**
2. Copie le script
3. Colle-le dans le bon service :
   - `ServerScriptService` → scripts serveur
   - `ReplicatedStorage` → RemoteEvents
4. Lance le jeu en mode test

---

## 📌 Exemple

```lua
player.leaderstats.Money.Value += 100
