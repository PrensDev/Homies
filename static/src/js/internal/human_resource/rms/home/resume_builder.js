"use strict";

/**
 * ============================================================
 * * Functions
 * ============================================================
 */

const isObjNotEmpty = (obj) => { return !Object.values(obj).every(e => e === null) }


/**
 * ============================================================
 * * Objects
 * ============================================================
 */

class Applicant{

    // ? Constructor
    constructor(params = {
        first_name: null, 
        middle_name: null, 
        last_name: null, 
        suffix_name: null,
        email: null,
        contact_number: null
    }, debugMode = false) {
        this.debugMode = debugMode;

        let obj = {}
        for(var key in params) obj[key] = params[key];
        this.applicant = obj;

        if(this.debugMode) console.info("A new applicant instance is created");
    }

    // ? Update Applicant Info
    updateApplicantInfo(params = {
        first_name: null, 
        middle_name: null, 
        last_name: null, 
        suffix_name: null,
        email: null,
        contact_number: null
    }) {
        for(var key in params) this.applicant[key] = params[key];
        
        if(this.debugMode) console.info("Applicant information has been updated");
    }
    
    // ? Get Applicant Info
    getApplicantInfo() { return this.applicant }
}

class Resume extends Applicant {

    // ? Constructor
    constructor(applicantInfo, debugMode = false) {
        super(applicantInfo, debugMode);
        this.debugMode = debugMode;
        
        this.resume = {
            summary: null,
            experiences: [],
            education: [],
            certifications: [],
            skills: [],
            awards: []
        }
    }

    // ? ID for records
    id(prefix) {
        return `${ prefix }-${ moment().format("YYMMDD") }-${ 100 + Math.round((Math.random() * 100) | 0) }`
    }

    // ? Get Resume Info 
    getResumeInfo() {
        return {
            applicant: super.getApplicantInfo(),
            resume: this.resume
        }
    }

    // ? Set/Update Summary
    updateSummary(summary) { 
        this.resume.summary = summary;
        if(this.debugMode) console.info("A summary has been updated.");
    }

    // ? Get Summary
    getSummary() { return this.resume.summary }

    // ? Add Experience
    addExperience(params = {
        job_title: null,
        company: null,
        start_month: null,
        start_year: null,
        end_month: null,
        end_year: null,
        description: null
    }) {
        if(isObjNotEmpty(params)) {
            let obj = { experience_id: this.id('exp') }
            for(var key in params) obj[key] = params[key];
            this.resume.experiences.push(obj);

            if(this.debugMode) console.info("An experience has been added.");
        }
    }

    // ? Remove Experience
    removeExperience(experience_id) {
        this.resume.experiences.splice(this.resume.experiences.map(e => {
            return e.experience_id;
        }).indexOf(experience_id), 1);
        
        if(this.debugMode) console.info("An experience has been removed.");
    }

    // ? Get Experiences
    getExperiences(experience_id = null) { 
        return experience_id 
            ? this.resume.experiences[this.resume.experiences.findIndex((e => e.experience_id == experience_id))]
            : this.resume.experiences; 
    }

    // ? Update Experience
    updateExperience(experience_id, params = {
        job_title: null,
        company: null,
        start_month: null,
        start_year: null,
        end_month: null,
        end_year: null,
        description: null
    }) {
        for(var key in params) this.resume.experiences[this.resume.experiences.findIndex((e => e.experience_id == experience_id))][key] = params[key]; 

        if(this.debugMode) console.info("An experience has been updated");
    };

    // ? Add Education
    addEducation(params = {
        school: null,
        degree: null,
        study_field: null,
        start_year: null,
        end_year: null,
        description: null
    }) {
        if(isObjNotEmpty(params)) {
            let obj = { education_id: this.id('educ') }
            for(var key in params) obj[key] = params[key];
            this.resume.education.push(obj);

            if(this.debugMode) console.info("An education has been added.");
        }
    }

    // ? Remove Education
    removeEducation(education_id) {
        this.resume.education.splice(this.resume.education.map(e => {
            return e.education_id;
        }).indexOf(education_id), 1);
        
        if(this.debugMode) console.info("An education has been removed.");
    }

    // ? Get Education
    getEducation(education_id = null) { 
        return education_id 
            ? this.resume.education[this.resume.education.findIndex((e => e.education_id == education_id))]
            : this.resume.education; 
    }

    // ? Update Education
    updateEducation(education_id, params = {
        school: null,
        degree: null,
        study_field: null,
        start_year: null,
        end_year: null,
        description: null
    }) {
        for(var key in params) this.resume.education[this.resume.education.findIndex((e => e.education_id == education_id))][key] = params[key]; 

        if(this.debugMode) console.info("An experience has been updated");
    };

    // ? Add Certification
    addCertification(params = {
        name: null,
        organization: null,
        credential_id: null,
        issue_month: null,
        issue_year: null,
        experience_month: null,
        experience_year: null
    }) {
        if(isObjNotEmpty(params)) {
            let obj = { certification_id: this.id('cert') }
            for(var key in params) obj[key] = params[key];
            this.resume.certifications.push(obj);
    
            if(this.debugMode) console.info("A certification has been added.");
        }
    }

    // ? Remove Certification
    removeCertification(certification_id) {
        this.resume.certifications.splice(this.resume.certifications.map(e => {
            return e.certification_id;
        }).indexOf(certification_id), 1);
        
        if(this.debugMode) console.info("A certification has been removed.");
    }

    // ? Get Certifications
    getCertifications(certification_id = null) { 
        return certification_id 
            ? this.resume.certifications[this.resume.certifications.findIndex((e => e.certification_id == certification_id))]
            : this.resume.certifications; 
    }

    // ? Update Certification
    updateCertification(certification_id, params = {
        name: null,
        organization: null,
        credential_id: null,
        issue_month: null,
        issue_year: null,
        experience_month: null,
        experience_year: null
    }) {
        for(var key in params) this.resume.certifications[this.resume.certifications.findIndex((e => e.certification_id == certification_id))][key] = params[key]; 

        if(this.debugMode) console.info("An experience has been updated");
    };

    // ? Add Skill
    addSkill(name) {
        if(name) {
            this.resume.skills.push({
                skill_id: this.id('skill'),
                name: name
            });

            if(this.debugMode) console.info("A new skill has been added");
        }
    }

    // ? Get Skills
    getSkills(skill_id) {
        return skill_id
            ? this.resume.skills[this.resume.skills.findIndex((e => e.skill_id == skill_id))]
            : this.resume.skills
    }

    // ? Remove Skill
    removeSkill(skill_id) {
        this.resume.skills.splice(this.resume.skills.map(e => {
            return e.skill_id;
        }).indexOf(skill_id), 1);
        
        if(this.debugMode) console.info("A skill has been removed.");
    }

    // ? Update Skill
    updateSkill(skill_id, name = null) {
        this.resume.skills[this.resume.skills.findIndex((e => e.skill_id == skill_id))].name = name;
        if(this.debugMode) console.info("A skill has been added");
    }

    // ? Add Award
    addAward(params = {
        name: null,
        issuer: null,
        issue_month: null,
        issue_year: null,
        description: null
    }) {
        if(isObjNotEmpty(params)) {
            let obj = { award_id: this.id('award') }
            for(var key in params) obj[key] = params[key];
            this.resume.awards.push(obj);

            if(this.debugMode) console.info("An award has been added.");
        }
    }

    // ? Get Awards
    getAwards(award_id) {
        return award_id
            ? this.resume.awards[this.resume.awards.findIndex((e => e.award_id == award_id))]
            : this.resume.awards
    }

    // ? Remove Reward
    removeAward(award_id) {
        this.resume.awards.splice(this.resume.awards.map(e => {
            return e.award_id;
        }).indexOf(award_id), 1);
        
        if(this.debugMode) console.info("An award has been removed.");
    }

    // ? Update Award
    updateAward(award_id, params = {
        name: null,
        issuer: null,
        issue_month: null,
        issue_year: null,
        description: null
    }) {
        for(var key in params) this.resume.awards[this.resume.awards.findIndex((e => e.award_id == award_id))][key] = params[key]; 

        if(this.debugMode) console.info("An award has been updated");
    }
}

/**
 * ============================================================
 * * Applicant Instance and Functions
 * ============================================================
 */

/** INSTANTIATE RESUME */
var resume = new Resume();

/**
 * Edit Applicant Information
 */
$('#editApplicantInfoBtn').on('click', () => {
    const applicantInfo = resume.getApplicantInfo();
    setValue({
        "#editApplicantInfo_firstName": applicantInfo.first_name,
        "#editApplicantInfo_middleName": applicantInfo.middle_name,
        "#editApplicantInfo_lastName": applicantInfo.last_name,
        "#editApplicantInfo_suffixName": applicantInfo.suffix_name,
        "#editApplicantInfo_email": applicantInfo.email,
        "#editApplicantInfo_contactNumber": applicantInfo.contact_number,
    });
    showModal('#editApplicantInfoModal');
});

validateForm('#updateApplicantInfoForm', {
    rules: {
        firstName: {
            required: true
        },
        lastName: {
            required: true
        },
        email: {
            required: true,
            email: true
        },
        contactNumber: {
            required: true
        },
    },
    messages: {
        firstName: {
            required: "Your first name is required"
        },
        lastName: {
            required: "Your last name is required"
        },
        email: {
            required: "You email is required",
            email: "This must be a valid email"
        },
        contactNumber: {
            required: "Your contact number is required"
        },
    },
    submitHandler: () => {
        
        const formData = generateFormData('#updateApplicantInfoForm');

        resume.updateApplicantInfo({
            first_name: formData.get('firstName'),
            middle_name: formData.get('middleName'),
            last_name: formData.get('lastName'),
            suffix_name: formData.get('suffixName'),
            email: formData.get('email'),
            contact_number: formData.get('contactNumber')
        });

        const applicantInfo = resume.getApplicantInfo()

        setContent({
            "#resume_applicantFullName": formatName('F M. L, S', {
                firstName: applicantInfo.first_name,
                middleName: applicantInfo.middle_name,
                lastName: applicantInfo.last_name,
                suffixName: applicantInfo.suffix_name,
            }),
            "#resume_applicantEmail": applicantInfo.email,
            "#resume_applicantContactNumber": applicantInfo.contact_number
        })
        hideModal('#editApplicantInfoModal');
        return false
    }
});

onHideModal('#editApplicantInfoModal', () => resetForm('#updateApplicantInfoForm'));

/**
 * Edit Summary
 */
$('#editSummaryBtn').on('click', () => {
    setValue('#editSummary_summary', resume.getSummary());
    showModal('#editSummaryModal');
});

validateForm('#updateSummaryForm', {
    submitHandler: () => {
        const formData = generateFormData('#updateSummaryForm');
        const summary = formData.get('summary');
        resume.updateSummary(summary);
        if(isEmptyOrNull(summary)) {
            setContent('#resume_summary', `
                <div class="px-5 py-3 text-center font-italic text-muted">This optional section can help you stand out to recruiters. If this section is empty, it will not appear on your resume.</div>
            `)
        } else {
            setContent('#resume_summary', `<p>${ resume.getSummary() }</p>`)
        }
        hideModal('#editSummaryModal');
        return false;
    }
});

onHideModal('#editSummaryModal', () => resetForm('#updateSummaryForm'));

/**
 * Add Experience
 */
$('#addExperienceBtn').on('click', () => {
    showModal('#addExperienceModal');
})


// var resume = new Resume({
//     first_name: "Jetsun Prince",
//     middle_name: "Padrogane",
//     last_name: "Torres",
//     suffix_name: null,
//     email: "jetsunprincetorres@gmail.com",
//     contact_number: "09123456789"
// }, true);

// resume.updateApplicantInfo({
//     first_name: "Joana Monique",
//     email: "joanamoniquetorres@gmail.com",
// });

// resume.updateSummary("Lorem ipsum dolor sit amet consectetur adipisicing elit. Suscipit dolores fuga quam eum deserunt in quibusdam voluptatem officiis a iste ullam reprehenderit recusandae, vero atque necessitatibus repellat eos earum. Deleniti?");

// resume.addExperience({
//     job_title: "Software Engineer",
//     company: "Tesla Company",
//     start_month: 1,
//     start_year: 2020
// });

// resume.addEducation({
//     school: "Polytechnic University of the Philippines",
//     degree: "Bachelor of Science in Information Technology"
// });

// resume.addCertification({
//     name: "Information Technology Certificate 1",
//     organization: "Polytechnic University of the Philippines"
// });

// resume.addSkill("Web Development");

// resume.addAward({
//     name: "Summa Cum Laude",
//     issuer: "PUP",
// });

// console.log(resume.getResumeInfo())