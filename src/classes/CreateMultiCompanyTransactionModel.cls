global class CreateMultiCompanyTransactionModel extends ErrorResult
    {
        /// <summary>
        /// Transaction Code - the internal reference code used by the client application. This is used for operations such as
        /// Get, Adjust, Settle, and Void. If you leave the transaction code blank, a GUID will be assigned to each transaction.
        /// In multi company scenario, each transaction with be this code with an extension at the end, ".1", ".2", ".3" etc
        /// </summary>
        global String code { get; set; }

        /// <summary>
        /// Multi company transaction line item list
        /// </summary>
        global List<MultiCompanyLineItemModel> lines { get; set; }

        /// <summary>
        /// Specifies the type of document to create. A document type ending with `Invoice` is a permanent transaction
        /// that will be recorded in AvaTax. A document type ending with `Order` is a temporary estimate that will not
        /// be preserved.
        /// 
        /// If you omit this value, the API will assume you want to create a `SalesOrder`.
        /// </summary>
        global DocumentType type { get; set; }

        /// <summary>
        /// Company Code - Specify the code of the company creating this transaction here. If you leave this value null,
        /// your account's default company will be used instead.
        /// </summary>
        global String companyCode { get; set; }

        /// <summary>
        /// Transaction Date - The date on the invoice, purchase order, etc.
        /// 
        /// By default, this date will be used to calculate the tax rates for the transaction. If you wish to use a
        /// different date to calculate tax rates, please specify a `taxOverride` of type `taxDate`.
        /// </summary>
        global DateTime documentDate { get; set; }

        /// <summary>
        /// Salesperson Code - The client application salesperson reference code.
        /// </summary>
        global String salespersonCode { get; set; }

        /// <summary>
        /// Customer Code - The client application customer reference code.
        /// </summary>
        global String customerCode { get; set; }

        /// <summary>
        /// Customer Usage Type - The client application customer or usage type. For a list of 
        /// available usage types, see `/api/v2/definitions/entityusecodes`.
        /// </summary>
        global String customerUsageType { get; set; }

        /// <summary>
        /// Discount - The discount amount to apply to the document. This value will be applied only to lines
        /// that have the `discounted` flag set to true. If no lines have `discounted` set to true, this discount
        /// cannot be applied.
        /// </summary>
        global Decimal discount { get; set; }

        /// <summary>
        /// Purchase Order Number for this document.
        /// 
        /// This is required for single use exemption certificates to match the order and invoice with the certificate.
        /// </summary>
        global String purchaseOrderNo { get; set; }

        /// <summary>
        /// Exemption Number for this document.
        /// 
        /// If you specify an exemption number for this document, this document will be considered exempt, and you
        /// may be asked to provide proof of this exemption certificate in the event that you are asked by an auditor
        /// to verify your exemptions.
        /// </summary>
        global String exemptionNo { get; set; }

        /// <summary>
        /// Default addresses for all lines in this document. 
        /// 
        /// These addresses are the default values that will be used for any lines that do not have their own
        /// address information. If you specify addresses for a line, then no default addresses will be loaded
        /// for that line.
        /// </summary>
        global AddressesModel addresses { get; set; }

        /// <summary>
        /// Special parameters for this transaction.
        /// 
        /// To get a full list of available parameters, please use the `/api/v2/definitions/parameters` endpoint.
        /// </summary>
        global Map<string, string> parameters { get; set; }

        /// <summary>
        /// Customer-provided Reference Code with information about this transaction.
        /// 
        /// This field could be used to reference the original document for a return invoice, or for any other
        /// reference purpose.
        /// </summary>
        global String referenceCode { get; set; }

        /// <summary>
        /// Sets the sale location code (Outlet ID) for reporting this document to the tax authority.
        /// 
        /// This value is used by Avalara Managed Returns to group documents together by reporting locations
        /// for tax authorities that require location-based reporting.
        /// </summary>
        global String reportingLocationCode { get; set; }

        /// <summary>
        /// Causes the document to be committed if true. This option is only applicable for invoice document 
        /// types, not orders.
        /// </summary>
        global Boolean commitDocument { get; set; }

        /// <summary>
        /// BatchCode for batch operations.
        /// </summary>
        global String batchCode { get; set; }

        /// <summary>
        /// Specifies a tax override for the entire document
        /// </summary>
        global TaxOverrideModel taxOverride { get; set; }

        /// <summary>
        /// The three-character ISO 4217 currency code for this transaction.
        /// </summary>
        global String currencyCode { get; set; }

        /// <summary>
        /// Specifies whether the tax calculation is handled Local, Remote, or Automatic (default). This only 
        /// applies when using an AvaLocal server.
        /// </summary>
        global ServiceMode serviceMode { get; set; }

        /// <summary>
        /// Currency exchange rate from this transaction to the company base currency.
        ///  
        /// This only needs to be set if the transaction currency is different than the company base currency.
        /// It defaults to 1.0.
        /// </summary>
        global Decimal exchangeRate { get; set; }

        /// <summary>
        /// Effective date of the exchange rate.
        /// </summary>
        global DateTime exchangeRateEffectiveDate { get; set; }

        /// <summary>
        /// Sets the Point of Sale Lane Code sent by the User for this document.
        /// </summary>
        global String posLaneCode { get; set; }

        /// <summary>
        /// VAT business identification number for the customer for this transaction. This number will be used for all lines 
        /// in the transaction, except for those lines where you have defined a different business identification number.
        /// 
        /// If you specify a VAT business identification number for the customer in this transaction and you have also set up
        /// a business identification number for your company during company setup, this transaction will be treated as a 
        /// business-to-business transaction for VAT purposes and it will be calculated according to VAT tax rules.
        /// </summary>
        global String businessIdentificationNo { get; set; }

        /// <summary>
        /// Specifies if the Transaction has the seller as IsSellerImporterOfRecord.
        /// </summary>
        global Boolean isSellerImporterOfRecord { get; set; }

        /// <summary>
        /// User-supplied description for this transaction.
        /// </summary>
        global String description { get; set; }

        /// <summary>
        /// User-supplied email address relevant for this transaction.
        /// </summary>
        global String email { get; set; }

        /// <summary>
        /// If the user wishes to request additional debug information from this transaction, specify a level higher than `normal`.
        /// </summary>
        global TaxDebugLevel debugLevel { get; set; }
}