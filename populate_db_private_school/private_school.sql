CREATE TABLE private_school (
    id SERIAL PRIMARY KEY,
    private_school_name VARCHAR(255),
    state_name_private_school_latest_available_year VARCHAR(255),
    state_name_private_school_2019_20 VARCHAR(255),
    ansi_fips_state_code_private_school_latest_available_year VARCHAR(255),
    private_school_name_private_school_2019_20 VARCHAR(255),
    school_id_nces_assigned_private_school_latest_available_year VARCHAR(255),
    county_name_private_school_2019_20 VARCHAR(255),
    ansi_fips_county_code_private_school_2019_20 VARCHAR(255),
    days_per_school_year_private_school_2019_20 VARCHAR(255),
    length_of_school_day_in_total_hours_including_reported_minutes_private_school_2019_20 VARCHAR(255),
    library_or_library_media_center_private_school_2019_20 VARCHAR(255),
    phone_number_private_school_2019_20 VARCHAR(255),
    physical_address_private_school_2019_20 VARCHAR(255),
    city_private_school_2019_20 VARCHAR(255),
    state_abbr_private_school_latest_available_year VARCHAR(255),
    zip_private_school_2019_20 VARCHAR(255),
    zip4_private_school_2019_20 VARCHAR(255),
    zip_4_private_school_2019_20 VARCHAR(255),
    total_students_ungraded_pk_12_private_school_2019_20 VARCHAR(255),
    total_students_ungraded_k_12_private_school_2019_20 VARCHAR(255),
    prekindergarten_and_kindergarten_students_private_school_2019_20 VARCHAR(255),
    grades_1_8_students_private_school_2019_20 VARCHAR(255),
    grades_9_12_students_private_school_2019_20 VARCHAR(255),
    pupil_teacher_ratio_private_school_2019_20 VARCHAR(255),
    full_time_equivalent_fte_teachers_private_school_2019_20 VARCHAR(255)
);
