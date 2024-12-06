# TimescaleDB & PostGIS test

L'objectif de cet exemple est de montrer comment combiner l'utilisation de TimescaleDB et PostGIS pour bénéficier d'une base spatio-temporelle.

Par simplicité, on utilise TimecaleDB comme indiqué dans la page [Install TimescaleDB from a Docker container](https://docs.timescale.com/self-hosted/latest/install/installation-docker/) et on crée une extension PostGIS.

Les positions sont purement fictives.

## (Re)démarrage ultra rapide

Outils nécessaires : [docker](https://docs.docker.com/get-docker/)

```sh
# Nettoyage éventuel : conteneurs, réseaux, volumes
docker compose down --remove-orphans --volumes

# Dépendances : création et initialisation de la base de données
docker compose up -d --force-recreate
```

Connexion à la base de données :
```sh
# En étant dans le répertoire
docker compose exec -it db psql -h localhost -U vessel vessel

# En étant n'importe où
docker exec -it timescaledb-postgis-test-db-1 psql -h localhost -U vessel vessel
docker compose -p timescaledb-postgis-test exec -it db psql -h localhost -U vessel vessel
```

## Quelques exemples de requêtes

```sql
-- Positions dans les zones
SELECT a.vessel_id, a.time, z.name
FROM vessel_data a, zone z
WHERE ST_Within(a.position, z.geometrie)
order by time desc;

-- Dernières positions depuis XX jours
SELECT DISTINCT ON (vessel_id) vessel_id, ST_AsText(position) AS position 
FROM vessel_data 
WHERE time > now() - INTERVAL '20d'
ORDER BY vessel_id, 
time DESC;

-- Dernières positions, à moins de 1000m d'une zone depuis 1 an, par zone
SELECT DISTINCT ON (z.name, vessel_id) vessel_id, ST_AsText(position) AS position, a.time, z.name
FROM vessel_data a, zone z
WHERE ST_DWithin(ST_Transform(a.position, 3857), ST_Transform(z.geometrie, 3857), 1000) and time > now() - INTERVAL '1y'
ORDER BY z.name, vessel_id, time DESC;

-- Vitesse et position moyennes par 10 minutes pour chaque navire
-- https://docs.timescale.com/use-timescale/latest/time-buckets/about-time-buckets/
SELECT 
    vessel_id,
    time_bucket('10 minutes', time) AS bucket,
    ST_MakePoint(AVG(ST_X(position)), AVG(ST_Y(position))) AS avg_position,  -- Position moyenne
    AVG(speed) AS avg_speed
FROM 
    vessel_data
GROUP BY 
    vessel_id, bucket
ORDER BY 
    vessel_id, bucket;
```

## Nettoyage
```sh
# Nettoyage : conteneurs, réseaux, volumes, images
docker compose down --remove-orphans --volumes --rmi all
```