<?php
declare(strict_types=1);
require __DIR__ . '/includes/database.php';
require __DIR__ . '/classes/cafe.php';

// put the sql in here
$sql = 'SELECT customer.customer_id, customer.first_name, customer.last_name, customer.email, customer.phone
               dog_register.dog_id, dog_register.dog_name, dog_register.dog_breed, dog_register.dog_dob, dog_register.dog_vac_date
        FROM customer, dog_register
        WHERE customer.customer_id = dog_register.customer_id';

$statement = $db->query($sql);
$row = $statement->fetch(PDO::FETCH_ASSOC);

$cafe = Cafe::fromRow($row);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dog Cafe</title>
</head>
<body>
    
</body>
</html>