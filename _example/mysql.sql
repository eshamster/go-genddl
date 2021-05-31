-- generated by github.com/mackee/go-genddl. DO NOT EDIT!!!

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
    `id` INTEGER unsigned NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `type` INTEGER unsigned NOT NULL,
    `user_id` INTEGER unsigned NOT NULL,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NULL,
    UNIQUE user_id_type (`user_id`, `type`),
    INDEX user_id_created_at (`user_id`, `created_at`),
    FOREIGN KEY (`user_id`) REFERENCES user(`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
    `id` INTEGER unsigned NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL UNIQUE,
    `age` BIGINT NULL,
    `message` VARCHAR(191) NULL,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

