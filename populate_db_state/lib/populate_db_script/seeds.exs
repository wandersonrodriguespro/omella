defmodule PopulateDBScript.Seeds do
  alias PopulateDBScript.Repo
  alias PopulateDBScript.State

  def run do
    "./state.csv"
    |> File.stream!()
    |> CSV.decode!(headers: true)
    |> Enum.each(&import_row/1)
  end

  defp import_row(row) do
  
    %State{
      state_name: row["State Name"],
      state_name_2023_24: row["State Name [State] 2023-24"],
      state_abbr_latest_available_year: row["State Abbr [State] Latest available year"],
      ansi_fips_state_code_latest_available_year: row["ANSI/FIPS State Code [State] Latest available year"],
      web_site_url_2023_24: row["Web Site URL [State] 2023-24"],
      total_number_of_districts_with_enrollment_2023_24: row["Total Number of Districts with Enrollment [District] 2023-24"],
      total_number_operational_school_districts_2023_24: row["Total Number Operational School Districts [District] 2023-24"],
      total_number_of_school_districts_2023_24: row["Total Number of School Districts [District] 2023-24"],
      total_number_operational_schools_2023_24: row["Total Number Operational Schools [Public School] 2023-24"],
      total_number_operational_charter_schools_2023_24: row["Total Number Operational Charter Schools [Public School] 2023-24"],
      total_number_of_public_schools_2023_24: row["Total Number of Public Schools [Public School] 2023-24"],
      state_education_agency_name_2023_24: row["State Education Agency Name [State] 2023-24"],
      mailing_address_1_2023_24: row["Mailing Address 1 [State] 2023-24"],
      mailing_address_2_2023_24: row["Mailing Address 2 [State] 2023-24"],
      mailing_address_3_2023_24: row["Mailing Address 3 [State] 2023-24"],
      mailing_city_2023_24: row["Mailing City [State] 2023-24"],
      mailing_state_name_2023_24: row["Mailing State Name [State] 2023-24"],
      mailing_zip_2023_24: row["Mailing ZIP [State] 2023-24"],
      mailing_zip4_2023_24: row["Mailing ZIP4 [State] 2023-24"],
      phone_number_2023_24: row["Phone Number [State] 2023-24"],
      total_enrollment_exclude_ae_for_sy_2014_15_onward_2023_24: row["Total Enrollment (Exclude AE) for SY 2014-15 onward [State] 2023-24"],
      total_enrollment_include_ae_for_sy_2014_15_onward_2023_24: row["Total Enrollment (Include AE) for SY 2014-15 onward [State] 2023-24"],
      grades_1_8_students_2023_24: row["Grades 1-8 Students [State] 2023-24"],
      grades_9_12_students_2023_24: row["Grades 9-12 Students [State] 2023-24"],
      prekindergarten_students_2023_24: row["Prekindergarten Students [State] 2023-24"],
      kindergarten_students_2023_24: row["Kindergarten Students [State] 2023-24"],
      male_students_2023_24: row["Male Students [State] 2023-24"],
      female_students_2023_24: row["Female Students [State] 2023-24"],
      pupil_teacher_ratio_2023_24: row["Pupil/Teacher Ratio [State] 2023-24"],
      full_time_equivalent_fte_teachers_2023_24: row["Full-Time Equivalent (FTE) Teachers [State] 2023-24"],
      prekindergarten_teachers_2023_24: row["Prekindergarten Teachers [State] 2023-24"],
      kindergarten_teachers_2023_24: row["Kindergarten Teachers [State] 2023-24"],
      elementary_teachers_2023_24: row["Elementary Teachers [State] 2023-24"],
      secondary_teachers_2023_24: row["Secondary Teachers [State] 2023-24"],
      ungraded_teachers_2023_24: row["Ungraded Teachers [State] 2023-24"],
      full_time_equivalent_fte_staff_2023_24: row["Full-Time Equivalent (FTE) Staff [State] 2023-24"],
      paraprofessionals_instructional_aides_2023_24: row["Paraprofessionals/Instructional Aides [State] 2023-24"],
      instructional_coordinators_2023_24: row["Instructional Coordinators [State] 2023-24"],
      elementary_school_counselor_2023_24: row["Elementary School Counselor [State] 2023-24"],
      secondary_school_counselor_2023_24: row["Secondary School Counselor [State] 2023-24"],
      other_guidance_counselors_2023_24: row["Other Guidance Counselors [State] 2023-24"],
      guidance_counselors_2023_24: row["Guidance Counselors [State] 2023-24"],
      librarians_media_specialists_2023_24: row["Librarians/media specialists [State] 2023-24"],
      media_support_staff_2023_24: row["Media Support Staff [State] 2023-24"],
      lea_administrators_2023_24: row["LEA Administrators [State] 2023-24"],
      lea_administrative_support_staff_2023_24: row["LEA Administrative Support Staff [State] 2023-24"],
      school_administrators_2023_24: row["School Administrators [State] 2023-24"],
      school_administrative_support_staff_2023_24: row["School Administrative Support Staff [State] 2023-24"],
      student_support_services_staff_w_o_psychology_2023_24: row["Student Support Services Staff (w/o Psychology) [State] 2023-24"],
      school_psychologist_2023_24: row["School Psychologist [State] 2023-24"],
      all_other_support_staff_2023_24: row["All Other Support Staff [State] 2023-24"],
      grade_1_students_2023_24: row["Grade 1 Students [State] 2023-24"],
      grade_2_students_2023_24: row["Grade 2 Students [State] 2023-24"],
      grade_3_students_2023_24: row["Grade 3 Students [State] 2023-24"],
      grade_4_students_2023_24: row["Grade 4 Students [State] 2023-24"],
      grade_5_students_2023_24: row["Grade 5 Students [State] 2023-24"],
      grade_6_students_2023_24: row["Grade 6 Students [State] 2023-24"],
      grade_7_students_2023_24: row["Grade 7 Students [State] 2023-24"],
      grade_8_students_2023_24: row["Grade 8 Students [State] 2023-24"],
      grade_9_students_2023_24: row["Grade 9 Students [State] 2023-24"],
      grade_10_students_2023_24: row["Grade 10 Students [State] 2023-24"],
      grade_11_students_2023_24: row["Grade 11 Students [State] 2023-24"],
      grade_12_students_2023_24: row["Grade 12 Students [State] 2023-24"],
      grade_13_students_2023_24: row["Grade 13 Students [State] 2023-24"],
      ungraded_students_2023_24: row["Ungraded Students [State] 2023-24"],
      adult_education_students_2023_24: row["Adult Education Students [State] 2023-24"],
    }
    |> State.changeset(row)
    |> Repo.insert!()
  end
end

PopulateDBScript.Seeds.run()
