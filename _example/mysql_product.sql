DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
    `id` INTEGER unsigned NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `type` INTEGER unsigned NOT NULL,
    `user_id` INTEGER unsigned NOT NULL,
    `received_user_id` INTEGER NULL,
    `description` TEXT NOT NULL,
    `size` INTEGER NULL,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NULL,
    UNIQUE (`user_id`, `type`),
    FOREIGN KEY (`user_id`) REFERENCES user(`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX product_user_id_created_at ON product (`user_id`, `created_at`);

