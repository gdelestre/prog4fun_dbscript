CREATE OR REPLACE VIEW mes_fonctions_avec_commandes AS

select * from (
select concat(f.id, a.id) as id, f.nom_fonction, a.num_etape, a.nom_fichier, a.detail, a.ligne_commande, o.nom from prog4fun_project.fonction f 
left join prog4fun_project.action a on f.id = a.id_fonction join prog4fun_project.outil o on o.id =a.id_outil
union
select concat(f.id, a.id) as id, f.nom_fonction, a.num_etape, a.nom_fichier, a.detail, a.ligne_commande, o.nom from prog4fun_project.fonction f 
right join prog4fun_project.action a on f.id = a.id_fonction join prog4fun_project.outil o on o.id =a.id_outil
union
select concat(f.id, c.id) as id, f.nom_fonction, -1, '', c.detail, c.ligne_commande, l.nom from prog4fun_project.fonction f 
left join prog4fun_project.commande c on f.id = c.id_fonction join prog4fun_project.langage l on l.id =c.id_langage 
union
select concat(f.id, c.id) as id, f.nom_fonction, -1, '', c.detail, c.ligne_commande, l.nom from prog4fun_project.fonction f 
right join prog4fun_project.commande c on f.id = c.id_fonction join prog4fun_project.langage l on l.id =c.id_langage)
as ma_table order by ma_table.nom_fonction;