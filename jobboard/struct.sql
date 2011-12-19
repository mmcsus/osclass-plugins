CREATE TABLE /*TABLE_PREFIX*/t_item_jobboard (
    fk_i_item_id INT(10) UNSIGNED NOT NULL,
    e_position_type ENUM('UNDEF', 'PART', 'FULL') DEFAULT 'UNDEF',
    s_salary VARCHAR(255),
        PRIMARY KEY (fk_i_item_id),
        FOREIGN KEY (fk_i_item_id) REFERENCES /*TABLE_PREFIX*/t_item (pk_i_id)
) ENGINE=InnoDB DEFAULT CHARACTER SET 'UTF8' COLLATE 'UTF8_GENERAL_CI';

CREATE TABLE /*TABLE_PREFIX*/t_item_jobboard_description (
    fk_i_item_id INT(10) UNSIGNED NOT NULL,
    fk_c_locale_code CHAR(5) NOT NULL,
    s_experience TEXT,
    s_studies TEXT,
    s_requirements TEXT,
    s_contract VARCHAR(255),
        PRIMARY KEY (fk_i_item_id, fk_c_locale_code),
        FOREIGN KEY (fk_c_locale_code) REFERENCES /*TABLE_PREFIX*/t_locale (pk_c_code),
        FOREIGN KEY (fk_i_item_id) REFERENCES /*TABLE_PREFIX*/t_item (pk_i_id)
) ENGINE=InnoDB DEFAULT CHARACTER SET 'UTF8' COLLATE 'UTF8_GENERAL_CI' ;