#!/usr/bin/env elixir

# Carrega as configurações do projeto
Mix.install([
  :csv_importer,
  {:csv, "~> 3.0"},
  {:ecto_sql, "~> 3.10"},
  {:postgrex, ">= 0.0.0"}
])

# Verifica se o caminho do arquivo CSV foi fornecido
case System.argv() do
  [csv_path] ->
    IO.puts("Iniciando importação do arquivo: #{csv_path}")
    
    try do
      # Inicia a aplicação
      {:ok, _} = Application.ensure_all_started(:csv_importer)
      
      # Função de importação
      csv_path
      |> File.stream!()
      |> CSV.decode(headers: true)
      |> Enum.map(fn {:ok, row} -> 
        %{
          school_name: row["School_Name"],
      state_name_public_school_latest_year: row["State_Name_Public_School_Latest_available_year"],
      state_name_public_school_2023_24: row["State_Name_Public_School_2023_24"],
      state_abbr_public_school_latest_year: row["State_Abbr_Public_School_Latest_available_year"],
      school_name_public_school_2023_24: row["School_Name_Public_School_2023_24"],
      school_id_nces_assigned_public_school_latest_year: row["School_ID_NCES_Assigned_Public_School_Latest_available_year"],
      agency_name_public_school_2023_24: row["Agency_Name_Public_School_2023_24"],
      agency_id_nces_assigned_public_school_latest_year: row["Agency_ID_NCES_Assigned_Public_School_Latest_available_year"],
      ansi_fips_state_code_public_school_latest_year: row["ANSI_FIPS_State_Code_Public_School_Latest_available_year"],
      web_site_url_public_school_2023_24: row["Web_Site_URL_Public_School_2023_24"],
      location_address_1_public_school_2023_24: row["Location_Address_1_Public_School_2023_24"],
      location_address_2_public_school_2023_24: row["Location_Address_2_Public_School_2023_24"],
      location_address_3_public_school_2023_24: row["Location_Address_3_Public_School_2023_24"],
      location_city_public_school_2023_24: row["Location_City_Public_School_2023_24"],
      location_state_abbr_public_school_2023_24: row["Location_State_Abbr_Public_School_2023_24"],
      location_zip_public_school_2023_24: row["Location_ZIP_Public_School_2023_24"],
      location_zip4_public_school_2023_24: row["Location_ZIP4_Public_School_2023_24"],
      mailing_address_1_public_school_2023_24: row["Mailing_Address_1_Public_School_2023_24"],
      mailing_address_2_public_school_2023_24: row["Mailing_Address_2_Public_School_2023_24"],
      mailing_address_3_public_school_2023_24: row["Mailing_Address_3_Public_School_2023_24"],
      mailing_city_public_school_2023_24: row["Mailing_City_Public_School_2023_24"],
      mailing_state_abbr_public_school_2023_24: row["Mailing_State_Abbr_Public_School_2023_24"],
      mailing_zip_public_school_2023_24: row["Mailing_ZIP_Public_School_2023_24"],
      mailing_zip4_public_school_2023_24: row["Mailing_ZIP4_Public_School_2023_24"],
      phone_number_public_school_2023_24: row["Phone_Number_Public_School_2023_24"],
      out_of_state_flag_public_school_2023_24: row["Out_of_State_Flag_Public_School_2023_24"],
      school_type_public_school_2023_24: row["School_Type_Public_School_2023_24"],
      agency_type_district_2023_24: row["Agency_Type_District_2023_24"],
      start_of_year_status_public_school_2023_24: row["Start_of_Year_Status_Public_School_2023_24"],
      updated_status_public_school_2023_24: row["Updated_Status_Public_School_2023_24"],
      effective_date_of_updated_status_public_school_2023_24: row["Effective_Date_of_Updated_Status_Public_School_2023_24"],
      charter_school_public_school_2023_24: row["Charter_School_Public_School_2023_24"],
      shared_time_school_public_school_2023_24: row["Shared_Time_School_Public_School_2023_24"],
      state_school_id_public_school_2023_24: row["State_School_ID_Public_School_2023_24"],
      state_agency_id_public_school_2023_24: row["State_Agency_ID_Public_School_2023_24"],
      reconstituted_flag_public_school_2023_24: row["Reconstituted_Flag_Public_School_2023_24"],
      virtual_school_status_sy_2016_17_onward_public_school_2023_24: row["Virtual_School_Status_SY_2016_17_onward_Public_School_2023_24"],
      national_school_lunch_program_public_school_2023_24: row["National_School_Lunch_Program_Public_School_2023_24"],
      charter_authorizer_state_id_primary: row["Charter_Authorizer_State_ID_Primary_Public_School_2023_24"],
      charter_authorizer_name_primary: row["Charter_Authorizer_Name_Primary_Public_School_2023_24"],
      charter_authorizer_state_id_secondary: row["Charter_Authorizer_State_ID_Secondary_Public_School_2023_24"],
      charter_authorizer_name_secondary: row["Charter_Authorizer_Name_Secondary_Public_School_2023_24"],
      supervisory_union_id_number_public_school_2023_24: row["Supervisory_Union_ID_Number_Public_School_2023_24"],
      school_level_sy_2017_18_onward_public_school_2023_24: row["School_Level_SY_2017_18_onward_Public_School_2023_24"],
      lowest_grade_offered_public_school_2023_24: row["Lowest_Grade_Offered_Public_School_2023_24"],
      highest_grade_offered_public_school_2023_24: row["Highest_Grade_Offered_Public_School_2023_24"],
      prekindergarten_offered_public_school_2023_24: row["Prekindergarten_offered_Public_School_2023_24"],
      kindergarten_offered_public_school_2023_24: row["Kindergarten_offered_Public_School_2023_24"],
      total_students_all_grades_excludes_ae_public_school_2023_24: row["Total_Students_All_Grades_Excludes_AE_Public_School_2023_24"],
      total_students_all_grades_includes_ae_public_school_2023_24: row["Total_Students_All_Grades_Includes_AE_Public_School_2023_24"],
      free_lunch_eligible_public_school_2023_24: row["Free_Lunch_Eligible_Public_School_2023_24"],
      direct_certification_public_school_2023_24: row["Direct_Certification_Public_School_2023_24"],
      reduced_price_lunch_eligible_students_public_school_2023_24: row["Reduced_price_Lunch_Eligible_Students_Public_School_2023_24"],
      free_and_reduced_lunch_students_public_school_2023_24: row["Free_and_Reduced_Lunch_Students_Public_School_2023_24"],
      grades_1_8_students_public_school_2023_24: row["Grades_1_8_Students_Public_School_2023_24"],
      grades_9_12_students_public_school_2023_24: row["Grades_9_12_Students_Public_School_2023_24"],
      prekindergarten_students_public_school_2023_24: row["Prekindergarten_Students_Public_School_2023_24"],
      kindergarten_students_public_school_2023_24: row["Kindergarten_Students_Public_School_2023_24"],
      male_students_public_school_2023_24: row["Male_Students_Public_School_2023_24"],
      female_students_public_school_2023_24: row["Female_Students_Public_School_2023_24"],
      full_time_equivalent_fte_teachers_public_school_2023_24: row["Full_Time_Equivalent_FTE_Teachers_Public_School_2023_24"],
      pupil_teacher_ratio_public_school_2023_24: row["Pupil_Teacher_Ratio_Public_School_2023_24"],

          inserted_at: NaiveDateTime.utc_now(),
          updated_at: NaiveDateTime.utc_now()
        }
      end)
      |> Enum.chunk_every(1000)
      |> Enum.each(fn chunk ->
        CsvImporter.Repo.insert_all("public_shool", chunk)
      end)
      
      IO.puts("Importação concluída com sucesso!")
    rescue
      error ->
        IO.puts("Erro durante a importação: #{inspect(error)}")
        System.halt(1)
    end

  _ ->
    IO.puts("/home/wanderson/Downloads/public_school.csv")
    IO.puts("elixir import_csv.exs /home/wanderson/Downloads/public_school.csv")
    System.halt(1)
end