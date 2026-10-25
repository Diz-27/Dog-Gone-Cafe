<?php
declare(strict_types=1);

class Cafe{
    public ?int $customer_id; // this will be null until the product is saved in the database
    public string $first_name;
    public string $last_name;
    public string $email;
    public String $phone;

    // Do I also add the variables for the dog table?
    public ?int $dog_id;
    public string $dog_name;
    public string $breed;
    public DateTimeInnutable $dob;
    public DateTimeInnutable $vac_date;

    public ?int $menu_id;
    public string $item;
    public string $description;
    public float $price;
    

    public function __construct(
        ?int $customer_id = null,
        string $first_name,
        string $last_name,
        string $email,
        string $phone,
        ?int $dog_id,
        string $dog_name,
        string $breed,
        DateTimeInnutable $dob,
        DateTimeInnutable $vac_date,
        ?int $menu_id,
        string $item,
        string $description,
        float $price
    ){
        $this->customer_id = $customer_id;
        $this->first_name = $first_name;
        $this->last_name = $last_name;
        $this->email = $email;
        $this->phone = $phone;
        $this->dog_id = $dog_id;
        $this->dog_name = $dog_name;
        $this->breed = $breed;
        $this->dob = $dob;
        $this->vac_date = $vac_date;
        $this->menu_id = $menu_id;
        $this->item = $item;
        $this->description = $description;
        $this->price = $price;
        
    }

    public static function fromRow(array $row): Cafe
    {
        return new Cafe(
        $row[]
        );
    }
}

?>