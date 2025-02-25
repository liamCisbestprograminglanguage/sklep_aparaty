<?php

if (isset($_GET['firmaID'])) {
    $firmaID = $_GET['firmaID'];
    $sql = "SELECT * FROM producent WHERE firmaID = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("i", $firmaID);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
?>
        <div class="producent_prod">
            <h2><?php echo $row['NazwaF']; ?></h2>
            
            <div class="producent-image">
                <img src="pic/<?php echo $firmaID; ?>.jpg" alt="<?php echo $row['NazwaF']; ?>" />
            </div>

            <p><strong>Opis:</strong> <?php echo nl2br($row['opis']); ?></p>
            <p><strong>Ocena:</strong> <?php echo $row['ocena']; ?>/10</p>
            <p><strong>Siedziba:</strong> <?php echo $row['siedziba']; ?></p>
            <p><strong>Data założenia:</strong> <?php echo $row['data_stworzenia']; ?></p>
            <p><strong>Strona internetowa:</strong> <a href="<?php echo $row['strona_internetowa']; ?>" target="_blank"><?php echo $row['strona_internetowa']; ?></a></p>
        </div>
<?php
    } else {
        echo "<p>Nie znaleziono producenta.</p>";
    }

    $stmt->close();
} else {
    echo "<p>Nie wybrano producenta.</p>";
}

$conn->close();
?>
