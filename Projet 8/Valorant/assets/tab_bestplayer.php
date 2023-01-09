<div class="content_toggle_bestplayer" id=tab_bestplayer>
    
    <!-- TABLE CONSTRUCTION -->
    <table id="table_bestplayer" class="table table-hover table-dark">
        <thead class="thead-dark">
            <tr>                    
                <th scope="col"> Pseudo</th>          <!-- Pseudo -->
                <th scope="col"> Equipe </th>       <!-- Team -->
                <th scope="col"> Kill </th>          <!-- Kill -->
                <th scope="col"> Death </th>          <!-- Death -->
                <th scope="col"> Assist </th>          <!-- Assist -->
                <th scope="col"> Agent </th>          <!-- Agent -->
            </tr>
        </thead>

        <tr>    <?php
                    $dbc_bestplayer = new PDO('mysql:host=localhost; dbname=valorant', 'root', 'root' );
                    $query_bestplayer = "SELECT nom_uti_j , equipe_sel_e , tue_j , mort_j , assist_j , nom_p  
                    FROM joueur 
                    INNER JOIN personnage ON joueur.Id_Personnage = personnage.Id_Personnage 
                    INNER JOIN equipe ON joueur.Id_Equipe = equipe.Id_Equipe 
                    ORDER BY `tue_j` DESC 
                    LIMIT 1;";

                    $result_bestplayer =  $dbc_bestplayer->query($query_bestplayer);
                    while ($row_bestplayer = $result_bestplayer->fetch()) 
                    {
                ?>
            <!-- FETCHING DATA FROM EACH ROW OF EVERY COLUMN -->
            <td><?php echo $row_bestplayer['nom_uti_j'];?></td> <!-- Pseudo -->
            <td><?php echo $row_bestplayer['equipe_sel_e'];?></td>       <!-- Equipe -->
            <td><?php echo $row_bestplayer['tue_j'];?></td>       <!-- Kill -->
            <td><?php echo $row_bestplayer['mort_j'];?></td>       <!-- Mort -->
            <td><?php echo $row_bestplayer['assist_j'];?></td>       <!-- Assist -->
            <td><?php echo $row_bestplayer['nom_p'];?></td>       <!-- Nom Personnage -->
            
            <?php } ?>
        </tr>

    </table>
</div>
