json.extract! tbl_quality_issue, :id, :ProblemType, :Year, :Date, :PartID, :Issuedby, :OpertionHd, :OpertionTp, :OpertionSp, :OpertionQA, :Reason, :ReasonNote, :Feature, :Changed, :Comment, :SpecialInst, :QualityAlert, :QualityAlertMemo, :Cost, :NofPiecesQA, :NofPiecesHT, :MachineID, :CustomerID, :CustomerRefNum, :DateIssued, :DispositionCustomer, :DispositionStackpole, :Picture, :Lengthofchange, :Okdby, :ModWritten, :SpecialInstWritten, :HoldTag, :TPCTag, :CertTag, :QualityATag, :Closed, :Supplier_Issue, :ControlPlan, :LayeredAudit, :QualityMemo, :FeatureNumber, :CurrentMinSpec, :CurrentMaxSpec, :TPCMinSpec, :TPCMaxSpec, :OperationNumber, :body, :operation, :qty, :active_status, :created_at, :updated_at
json.url tbl_quality_issue_url(tbl_quality_issue, format: :json)
