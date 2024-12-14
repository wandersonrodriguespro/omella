defmodule PopulateDBScript.Seeds do
  alias PopulateDBScript.Repo
  alias PopulateDBScript.PublicSchool

  def run do
    "/home/wanderson/Downloads/public_school(1).csv"
    |> File.stream!()
    |> CSV.decode!(headers: true)
    |> Enum.each(&import_row/1)
  end

  defp import_row(row) do
    %PublicSchool{
      school_name: row["School Name"],
      state_name_public_school_latest_available_year: row["State Name [Public School] Latest available year"],state_name_public_school_2023_24: row["State Name [Public School] 2023-24"],
      state_abbr_public_school_latest_available_year: row["State Abbr [Public School] Latest available year"],
      school_name_public_school_2023_24: row["School Name [Public School] 2023-24"],
      school_id_nces_assigned_public_school_latest_available_year: row["School ID - NCES Assigned [Public School] Latest available year"],
      agency_name_public_school_2023_24: row["Agency Name [Public School] 2023-24"],
      agency_id_nces_assigned_public_school_latest_available_year: row["Agency ID - NCES Assigned [Public School] Latest available year"],
      ansi_fips_state_code_public_school_latest_available_year: row["ANSI/FIPS State Code [Public School] Latest available year"],
      web_site_url_public_school_2023_24: row["Web Site URL [Public School] 2023-24"],
      location_address_1_public_school_2023_24: row["Location Address 1 [Public School] 2023-24"],
      location_address_2_public_school_2023_24: row["Location Address 2 [Public School] 2023-24"],
      location_address_3_public_school_2023_24: row["Location Address 3 [Public School] 2023-24"],
      location_city_public_school_2023_24: row["Location City [Public School] 2023-24"],
      location_state_abbr_public_school_2023_24: row["Location State Abbr [Public School] 2023-24"],
      location_zip_public_school_2023_24: row["Location ZIP [Public School] 2023-24"],
      location_zip4_public_school_2023_24: row["Location ZIP4 [Public School] 2023-24"],
      mailing_address_1_public_school_2023_24: row["Mailing Address 1 [Public School] 2023-24"],
      mailing_address_2_public_school_2023_24: row["Mailing Address 2 [Public School] 2023-24"],
      mailing_address_3_public_school_2023_24: row["Mailing Address 3 [Public School] 2023-24"],
      mailing_city_public_school_2023_24: row["Mailing City [Public School] 2023-24"],
      mailing_state_abbr_public_school_2023_24: row["Mailing State Abbr [Public School] 2023-24"],
      mailing_zip_public_school_2023_24: row["Mailing ZIP [Public School] 2023-24"],
      mailing_zip4_public_school_2023_24: row["Mailing ZIP4 [Public School] 2023-24"],
      phone_number_public_school_2023_24: row["Phone Number [Public School] 2023-24"],
      out_of_state_flag_public_school_2023_24: row["Out of State Flag [Public School] 2023-24"],
      school_type_public_school_2023_24: row["School Type [Public School] 2023-24"],
      agency_type_district_2023_24: row["Agency Type [District] 2023-24"],
      start_of_year_status_public_school_2023_24: row["Start of Year Status [Public School] 2023-24"],
      updated_status_public_school_2023_24: row["Updated Status [Public School] 2023-24"],
      effective_date_of_updated_status_public_school_2023_24: row["Effective Date of Updated Status [Public School] 2023-24"],
      charter_school_public_school_2023_24: row["Charter School [Public School] 2023-24"],
      shared_time_school_public_school_2023_24: row["Shared Time School [Public School] 2023-24"],
      state_school_id_public_school_2023_24: row["State School ID [Public School] 2023-24"],
      state_agency_id_public_school_2023_24: row["State Agency ID [Public School] 2023-24"],
      reconstituted_flag_public_school_2023_24: row["Reconstituted Flag [Public School] 2023-24"],
      virtual_school_status_sy_2016_17_onward_public_school_2023_24: row["Virtual School Status (SY 2016-17 onward) [Public School] 2023-24"],
      national_school_lunch_program_public_school_2023_24: row["National School Lunch Program [Public School] 2023-24"],
      charter_authorizer_state_id_primary_public_school_2023_24: row["Charter Authorizer State ID Primary [Public School] 2023-24"],
      charter_authorizer_name_primary_public_school_2023_24: row["Charter Authorizer Name Primary [Public School] 2023-24"],
      charter_authorizer_state_id_secondary_public_school_2023_24: row["Charter Authorizer State ID Secondary [Public School] 2023-24"],
      charter_authorizer_name_secondary_public_school_2023_24: row["Charter Authorizer Name Secondary [Public School] 2023-24"],
      supervisory_union_id_number_public_school_2023_24: row["Supervisory Union (ID) Number [Public School] 2023-24"],
      school_level_sy_2017_18_onward_public_school_2023_24: row["School Level (SY 2017-18 onward) [Public School] 2023-24"],
      lowest_grade_offered_public_school_2023_24: row["Lowest Grade Offered [Public School] 2023-24"],
      highest_grade_offered_public_school_2023_24: row["Highest Grade Offered [Public School] 2023-24"],
      prekindergarten_offered_public_school_2023_24: row["Prekindergarten offered [Public School] 2023-24"],
      kindergarten_offered_public_school_2023_24: row["Kindergarten offered [Public School] 2023-24"],
      total_students_all_grades_excludes_ae_public_school_2023_24: row["Total Students All Grades (Excludes AE) [Public School] 2023-24"],
      total_students_all_grades_includes_ae_public_school_2023_24: row["Total Students All Grades (Includes AE) [Public School] 2023-24"],
      free_lunch_eligible_public_school_2023_24: row["Free Lunch Eligible [Public School] 2023-24"],
      direct_certification_public_school_2023_24: row["Direct Certification [Public School] 2023-24"],
      reduced_price_lunch_eligible_students_public_school_2023_24: row["Reduced-price Lunch Eligible Students [Public School] 2023-24"],
      free_and_reduced_lunch_students_public_school_2023_24: row["Free and Reduced Lunch Students [Public School] 2023-24"],
      grades_1_8_students_public_school_2023_24: row["Grades 1-8 Students [Public School] 2023-24"],
      grades_9_12_students_public_school_2023_24: row["Grades 9-12 Students [Public School] 2023-24"],
      prekindergarten_students_public_school_2023_24: row["Prekindergarten Students [Public School] 2023-24"],
      kindergarten_students_public_school_2023_24: row["Kindergarten Students [Public School] 2023-24"],
      male_students_public_school_2023_24: row["Male Students [Public School] 2023-24"],
      female_students_public_school_2023_24: row["Female Students [Public School] 2023-24"],
      full_time_equivalent_fte_teachers_public_school_2023_24: row["Full-Time Equivalent (FTE) Teachers [Public School] 2023-24"],
      pupil_teacher_ratio_public_school_2023_24: row["Pupil/Teacher Ratio [Public School] 2023-24"]
    }
    |> Repo.insert!()
  end
end

PopulateDBScript.Seeds.run()
