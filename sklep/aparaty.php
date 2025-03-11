<div class="sidebar">
    <h3>Filtruj</h3>
    <form id="filterForm" method="GET" action="index.php">

        <h4>Typ aparatu</h4>
        <input type="hidden" name="id" value="2">
        <label><input type="checkbox" name="lustro[]" value="1"> DSLR</label><br>
        <label><input type="checkbox" name="lustro[]" value="0"> Bez lustra</label><br>

        <h4>Typ matrycy</h4>
        <?php
            $result = $conn->query("SELECT * FROM frame");
            while ($row = $result->fetch_assoc()) {
                echo '<label><input type="checkbox" name="matryca[]" value="' . $row['frameID'] . '"> ' . $row['nazwaF'] . '</label><br>';
            }
        ?>

        <h4>Typ mocowania</h4>
        <?php
            $result = $conn->query("SELECT * FROM mocowanie");
            while ($row = $result->fetch_assoc()) {
                echo '<label><input type="checkbox" name="mocowanie[]" value="' . $row['mocowanieID'] . '"> ' . $row['nazwaM'] . '</label><br>';
            }
        ?>

        <h4>Megapixele</h4>
        <label>Od: <input type="number" name="megapixele_min" step="1" min="0"></label><br>
        <label>Do: <input type="number" name="megapixele_max" step="1" min="0"></label><br>

        <h4>Firma</h4>
        <?php
            $result = $conn->query("");
            while ($row = $result->fetch_assoc()) {
                echo '<label><input type="checkbox" name="firma[]" value="' . $row['firmaID'] . '"> Firma ' . $row['nazwaF'] . '</label><br>';
            }
        ?>

        <button type="submit">Zastosuj</button>
    </form>
</div>

<?php
    $whereClauses = [];

    if (!empty($_GET['lustro'])) {
        $lustro = implode(',', array_map('intval', $_GET['lustro']));
        $whereClauses[] = "produkt.lustro IN ($lustro)";
    }

    if (!empty($_GET['matryca'])) {
        $matryca = implode(',', array_map('intval', $_GET['matryca']));
        $whereClauses[] = "produkt.frame IN ($matryca)";
    }

    if (!empty($_GET['mocowanie'])) {
        $mocowanie = implode(',', array_map('intval', $_GET['mocowanie']));
        $whereClauses[] = "produkt.mocowanie IN ($mocowanie)";
    }

    if (isset($_GET['megapixele_min']) && $_GET['megapixele_min'] !== "") {
        $megapixeleMin = (int)$_GET['megapixele_min'];
        $whereClauses[] = "produkt.MP >= $megapixeleMin";
    }

    if (isset($_GET['megapixele_max']) && $_GET['megapixele_max'] !== "") {
        $megapixeleMax = (int)$_GET['megapixele_max'];
        $whereClauses[] = "produkt.MP <= $megapixeleMax";
    }

    if (!empty($_GET['firma'])) {
        $firma = implode(',', array_map('intval', $_GET['firma']));
        $whereClauses[] = "produkt.firmaID IN ($firma)";
    }

    $whereSql = $whereClauses ? 'WHERE ' . implode(' AND ', $whereClauses) : '';

    $sql = "SELECT produkt.*, frame.nazwaF AS matrycaNazwa, mocowanie.nazwaM AS mocowanieNazwa 
            FROM produkt 
            LEFT JOIN frame ON produkt.frame = frame.frameID 
            LEFT JOIN mocowanie ON produkt.mocowanie = mocowanie.mocowanieID 
            $whereSql";

    $result = $conn->query($sql);

    if (!$result) {
        echo '<p>Błąd zapytania SQL: ' . $conn->error . '</p>';
        exit;
    }

    echo '<div id="productList">';
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            echo '<div class="product">';
            echo '<img src="images/' . $row['produktID'] . '.jpg" alt="' . $row['nazwaP'] . '">';
            echo '<h3>' . $row['nazwaP'] . '</h3>';
            echo '<p>Cena: ' . number_format($row['cena'], 2) . ' PLN</p>';
            echo '<p>Typ matrycy: ' . $row['matrycaNazwa'] . '</p>';
            echo '<p>Typ mocowania: ' . $row['mocowanieNazwa'] . '</p>';
            echo '<p>Megapixele: ' . $row['MP'] . '</p>';
            echo '</div>';
        }
    } else {
        echo '<p>Brak produktów spełniających kryteria.</p>';
    }
    echo '</div>';
?>