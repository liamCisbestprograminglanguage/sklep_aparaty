<?php

$query = "SELECT firmaID, NazwaF FROM producent";
$result = $conn->query($query);

if ($result->num_rows > 0) {
    echo '<div class="producenci-grid">';
    while ($row = $result->fetch_assoc()) {
        $imagePath = 'pic/' . $row['firmaID'] . '.jpg';
        echo '<div class="producent">';
        echo '<a href="index.php?id=6&firmaID=' . $row['firmaID'] . '">';
        echo '<img src="' . $imagePath . '" alt="' . $row['NazwaF'] . '">';
        echo '<h3>' . $row['NazwaF'] . '</h3>';
        echo '</a>';
        echo '</div>';
    }
    echo '</div>';
} else {
    echo '<p>Brak producentów do wyświetlenia.</p>';
}

$conn->close();
?>