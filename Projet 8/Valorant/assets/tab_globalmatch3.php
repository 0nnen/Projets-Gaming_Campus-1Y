<div class="content_toggle_globalmatch" id=tab_globalmatch>
                    
    <!-- TABLE CONSTRUCTION -->
    <table id="table_globalmatch" class="table table-hover table-dark">
        <thead class="thead-dark">
            <tr>                    
                <th scope="col"> Pseudo</th>          <!-- Pseudo -->
                <th scope="col"> Agent </th>       <!-- Team -->
                <th scope="col"> Equipe </th>          <!-- Kill -->
                <th scope="col"> Kill </th>          <!-- Death -->
                <th scope="col"> Death </th>          <!-- Assist -->
                <th scope="col"> Assist </th>          <!-- Agent -->
                <th scope="col"> Carte </th>          <!-- Carte -->
            </tr>
        </thead>

        <tr>    <?php
                    $dbc_globalmatch = new PDO('mysql:host=localhost; dbname=valorant', 'root', 'root' );
                    $query_globalmatch = "SELECT nom_uti_j,nom_p ,equipe_sel_e ,tue_j , mort_j , assist_j ,nom_m FROM joueur
                    INNER JOIN personnage ON joueur.Id_Personnage = personnage.Id_Personnage 
                    INNER JOIN equipe ON joueur.Id_Equipe = equipe.Id_Equipe
					INNER JOIN match_game ON joueur.Id_Match_game = match_game.Id_Match_game 
					INNER JOIN map ON match_game.Id_Map = map.Id_Map 
                    WHERE joueur.Id_Match_game = 3;";
                    $result_globalmatch = $dbc_globalmatch->query($query_globalmatch);
                    while ($row_globalmatch = $result_globalmatch->fetch())
                    {
                ?>
            <!-- FETCHING DATA FROM EACH ROW OF EVERY COLUMN -->
            <td><?php echo $row_globalmatch['nom_uti_j'];?></td> <!-- Pseudo -->
            <td><?php echo $row_globalmatch['nom_p'];?></td>       <!-- Nom Personnage -->
            <td><?php echo $row_globalmatch['equipe_sel_e'];?></td>       <!-- Equipe -->
            <td><?php echo $row_globalmatch['tue_j'];?></td>       <!-- Kill -->
            <td><?php echo $row_globalmatch['mort_j'];?></td>       <!-- Mort -->
            <td><?php echo $row_globalmatch['assist_j'];?></td>       <!-- Assist -->
            <td><?php echo $row_globalmatch['nom_m'];?></td>       <!-- Carte -->

        </tr> <?php } ?>
    </table>
</div>
