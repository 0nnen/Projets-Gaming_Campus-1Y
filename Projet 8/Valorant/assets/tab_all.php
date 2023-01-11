<div class="content_toggle_all" id=tab_all>

    <!-- TABLE CONSTRUCTION -->
    <table id="table_all" class="table table-hover table-dark">
        <thead class="thead-dark">
            <tr>                    
                <th scope="col"> Pseudo</th>          <!-- Pseudo -->
                <th scope="col"> Equipe </th>       <!-- Team -->
                <th scope="col"> Kill </th>          <!-- Kill -->
                <th scope="col"> Death </th>          <!-- Death -->
                <th scope="col"> Assist </th>          <!-- Assist -->
                <th scope="col"> Agent </th>          <!-- Agent -->
                <th scope="col"> Num Partie </th>          <!-- Partie Numero -->
                <th scope="col"> Carte </th>          <!-- Carte -->
            </tr>
        </thead>

        <tr>    <?php
                    $dbc_all = new PDO('mysql:host=localhost; dbname=valorant', 'root', 'root' );
                    $query_all = "SELECT nom_uti_j, equipe_sel_e , tue_j , mort_j , assist_j , nom_p , joueur.Id_Match_game , nom_m
                    FROM `joueur`
                    INNER JOIN match_game ON joueur.Id_Match_game = match_game.Id_Match_game 
                    INNER JOIN map ON match_game.Id_Map = map.Id_Map 
                    INNER JOIN personnage ON joueur.Id_Personnage = personnage.Id_Personnage 
                    INNER JOIN equipe ON joueur.Id_Equipe = equipe.Id_Equipe
                    ORDER BY `joueur`.`Id_Match_game` ASC;";
                    $result_all = $dbc_all->query($query_all);
                    while ($row_all = $result_all->fetch())
                    
                    {
                ?>
            <!-- FETCHING DATA FROM EACH ROW OF EVERY COLUMN -->
            <td><?php echo $row_all['nom_uti_j'];?></td> <!-- Pseudo -->
            <td><?php echo $row_all['equipe_sel_e'];?></td>       <!-- Equipe -->
            <td><?php echo $row_all['tue_j'];?></td>       <!-- Kill -->
            <td><?php echo $row_all['mort_j'];?></td>       <!-- Mort -->
            <td><?php echo $row_all['assist_j'];?></td>       <!-- Assist -->
            <td><?php echo $row_all['nom_p'];?></td>       <!-- Nom Personnage -->
            <td><?php echo $row_all['Id_Match_game'];?></td>       <!-- Numero Partie -->
            <td><?php echo $row_all['nom_m'];?></td>       <!-- Carte -->

        </tr> <?php } ?>
    </table>
</div>