public enum CompanyFilingStatus
{
    /// This company is not a reporting entity and cannot file taxes. To change this behavior, you must mark
    ///  the company as a reporting entity.
    NoReporting,

    /// This company is a reporting entity, but Avalara is not currently filing tax returns for this company.
    NotYetFiling,

    /// The customer has requested that Avalara Managed Returns begin filing for this company, however filing has
    ///  not yet started. Avalara's compliance team is reviewing this request and will update the company to
    ///  first filing status when complete.
    FilingRequested,

    /// Avalara has begun filing tax returns for this company. Normally, this status will change to `Active` after 
    ///  one month of successful filing of tax returns.
    FirstFiling,

    /// Avalara currently files tax returns for this company.
    Active,

    /// This company has not been configured for compliance
    NotConfiguredForCompliance

}