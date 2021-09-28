/****** Object:  Table [HS].[client]    Script Date: 9/28/2021 3:08:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HS].[client](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[client_key] [int] NULL,
	[client_id] [varchar](50) NULL,
	[client_name] [varchar](250) NULL,
	[parent_client_id] [varchar](50) NULL,
	[open_date] [datetime] NULL,
	[close_date] [datetime] NULL,
	[datamart_update_date] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Index [client_idx1]    Script Date: 9/28/2021 3:08:56 PM ******/
CREATE CLUSTERED INDEX [client_idx1] ON [HS].[client]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Table [HS].[financials]    Script Date: 9/28/2021 3:08:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HS].[financials](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[person_key] [int] NULL,
	[person_code] [varchar](50) NULL,
	[person_role] [varchar](50) NULL,
	[ar_fees_0_30] [decimal](25, 10) NULL,
	[ar_fees_31_60] [decimal](25, 10) NULL,
	[ar_fees_61_90] [decimal](25, 10) NULL,
	[ar_fees_90_plus] [decimal](25, 10) NULL,
	[ar_fees_total] [decimal](25, 10) NULL,
	[ar_costs_0_30] [decimal](25, 10) NULL,
	[ar_costs_31_60] [decimal](25, 10) NULL,
	[ar_costs_61_90] [decimal](25, 10) NULL,
	[ar_costs_90_plus] [decimal](25, 10) NULL,
	[ar_costs_total] [decimal](25, 10) NULL,
	[ar_total_fees_and_costs] [decimal](25, 10) NULL,
	[wip_fees_0_30] [decimal](25, 10) NULL,
	[wip_fees_31_60] [decimal](25, 10) NULL,
	[wip_fees_61_90] [decimal](25, 10) NULL,
	[wip_fees_90_plus] [decimal](25, 10) NULL,
	[wip_fees_total] [decimal](25, 10) NULL,
	[wip_costs_0_30] [decimal](25, 10) NULL,
	[wip_costs_31_60] [decimal](25, 10) NULL,
	[wip_costs_61_90] [decimal](25, 10) NULL,
	[wip_costs_90_plus] [decimal](25, 10) NULL,
	[wip_costs_total] [decimal](25, 10) NULL,
	[wip_total_fees_and_costs] [decimal](25, 10) NULL,
	[fees_billed_total] [decimal](25, 10) NULL,
	[cash_receipts_total] [decimal](25, 10) NULL,
	[fees_billed_plus_cash_receipts_total] [decimal](25, 10) NULL,
	[inventory_on_account_disb] [decimal](25, 10) NULL,
	[inventory_unapplied_cash_total] [decimal](25, 10) NULL,
	[inventory_on_account_fees_total] [decimal](25, 10) NULL,
	[effective_bill_rate_total] [decimal](25, 10) NULL,
	[realization_percentage_at_agreed_percentage] [decimal](25, 10) NULL,
	[net_margin] [decimal](25, 10) NULL,
	[hours_billable_current_mtd] [decimal](25, 10) NULL,
	[hours_billable_current_ytd] [decimal](25, 10) NULL,
	[hours_goal_mtd] [decimal](25, 10) NULL,
	[hours_goal_ytd] [decimal](25, 10) NULL,
	[utilization_percentage] [decimal](25, 10) NULL,
	[datamart_update_date] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Index [hs_financials_idx1]    Script Date: 9/28/2021 3:08:56 PM ******/
CREATE CLUSTERED INDEX [hs_financials_idx1] ON [HS].[financials]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Table [HS].[invoice]    Script Date: 9/28/2021 3:08:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HS].[invoice](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[billing_person_key] [int] NULL,
	[billing_person_code] [varchar](50) NULL,
	[client_id] [varchar](50) NULL,
	[matter_id] [varchar](50) NULL,
	[client_name] [varchar](500) NULL,
	[matter_name] [varchar](500) NULL,
	[bill_number] [int] NULL,
	[bill_date] [datetime] NULL,
	[bill_age] [int] NULL,
	[total_ar] [int] NULL,
	[bills_outstanding] [int] NULL,
	[total_billed] [int] NULL,
	[total_paid] [int] NULL,
	[avg_payment_days] [int] NULL,
	[expected_payment_date] [datetime] NULL,
	[days_late] [int] NULL,
	[matter_last_rcpt_date] [datetime] NULL,
	[client_last_rcpt_date] [datetime] NULL,
	[bill_last_payment_date] [datetime] NULL,
	[kpi_follow_up] [varchar](50) NULL,
	[datamart_update_date] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Index [finance_invoice_idx1]    Script Date: 9/28/2021 3:08:56 PM ******/
CREATE CLUSTERED INDEX [finance_invoice_idx1] ON [HS].[invoice]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Table [HS].[matter]    Script Date: 9/28/2021 3:08:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HS].[matter](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[matter_key] [int] NULL,
	[matter_id] [varchar](50) NULL,
	[matter_name] [varchar](250) NULL,
	[client_key] [int] NULL,
	[client_id] [varchar](50) NULL,
	[billing_person_key] [int] NULL,
	[billing_person_code] [varchar](50) NULL,
	[datamart_update_date] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Index [finance_matter_idx1]    Script Date: 9/28/2021 3:08:56 PM ******/
CREATE CLUSTERED INDEX [finance_matter_idx1] ON [HS].[matter]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Table [HS_Stage].[client_stage]    Script Date: 9/28/2021 3:08:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HS_Stage].[client_stage](
	[client_key] [int] NULL,
	[client_id] [varchar](50) NULL,
	[client_name] [varchar](250) NULL,
	[parent_client_id] [varchar](50) NULL,
	[open_date] [datetime] NULL,
	[close_date] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [HS_Stage].[financials_allocation_billed_collected_ebr]    Script Date: 9/28/2021 3:08:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HS_Stage].[financials_allocation_billed_collected_ebr](
	[employee_code] [varchar](50) NULL,
	[attorney_type] [varchar](50) NULL,
	[feescolMTD] [decimal](25, 10) NULL,
	[feescolYTD] [decimal](25, 10) NULL,
	[fessbillMTD] [decimal](25, 10) NULL,
	[feesbillYTD] [decimal](25, 10) NULL,
	[realization] [decimal](25, 10) NULL,
	[ebr] [decimal](25, 10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [HS_Stage].[financials_billing_attorney_aged_ar]    Script Date: 9/28/2021 3:08:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HS_Stage].[financials_billing_attorney_aged_ar](
	[person_key] [int] NULL,
	[person_code] [varchar](50) NULL,
	[type] [varchar](50) NULL,
	[ar_0_30] [decimal](25, 10) NULL,
	[ar_31_60] [decimal](25, 10) NULL,
	[ar_61_90] [decimal](25, 10) NULL,
	[ar_90_plus] [decimal](25, 10) NULL,
	[ar_total] [decimal](25, 10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [HS_Stage].[financials_billing_attorney_and_working_attorney_wip]    Script Date: 9/28/2021 3:08:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HS_Stage].[financials_billing_attorney_and_working_attorney_wip](
	[billing_employee_key] [int] NULL,
	[working_timekeeper_key] [int] NULL,
	[type] [varchar](50) NULL,
	[wip_0_30] [decimal](25, 10) NULL,
	[wip_31_60] [decimal](25, 10) NULL,
	[wip_61_90] [decimal](25, 10) NULL,
	[wip_90_plus] [decimal](25, 10) NULL,
	[wip_total] [decimal](25, 10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [HS_Stage].[financials_billing_attorney_effective_bill_rate_and_billing_realization]    Script Date: 9/28/2021 3:08:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HS_Stage].[financials_billing_attorney_effective_bill_rate_and_billing_realization](
	[person_code] [varchar](50) NULL,
	[person_key] [int] NULL,
	[sum_billed_amount] [decimal](25, 10) NULL,
	[sum_tobill_amount] [decimal](25, 10) NULL,
	[realization] [decimal](25, 10) NULL,
	[effective_bill_rate] [decimal](25, 10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [HS_Stage].[financials_billing_attorney_fees_billed_and_received_YTD]    Script Date: 9/28/2021 3:08:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HS_Stage].[financials_billing_attorney_fees_billed_and_received_YTD](
	[person_key] [int] NULL,
	[fees_billed] [decimal](25, 10) NULL,
	[fees_received] [decimal](25, 10) NULL,
	[total] [decimal](25, 10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [HS_Stage].[financials_billing_attorney_inventory]    Script Date: 9/28/2021 3:08:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HS_Stage].[financials_billing_attorney_inventory](
	[person_key] [int] NULL,
	[unapplied] [decimal](25, 10) NULL,
	[on_account_fees] [decimal](25, 10) NULL,
	[on_account_disb] [decimal](25, 10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [HS_Stage].[financials_fees_billed_received_working_attorney]    Script Date: 9/28/2021 3:08:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HS_Stage].[financials_fees_billed_received_working_attorney](
	[employee_key] [int] NULL,
	[feesreceived] [decimal](25, 10) NULL,
	[feesbilled] [decimal](25, 10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [HS_Stage].[financials_origination_and_development_net_margin]    Script Date: 9/28/2021 3:08:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HS_Stage].[financials_origination_and_development_net_margin](
	[employe_key] [int] NULL,
	[attorney_type] [varchar](100) NULL,
	[net_margin] [decimal](25, 10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [HS_Stage].[financials_origination_development_ar_cost]    Script Date: 9/28/2021 3:08:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HS_Stage].[financials_origination_development_ar_cost](
	[person_key] [int] NULL,
	[ar0] [decimal](25, 10) NULL,
	[ar1] [decimal](25, 10) NULL,
	[ar2] [decimal](25, 10) NULL,
	[ar3] [decimal](25, 10) NULL,
	[person_role] [varchar](50) NULL,
	[from_days] [int] NULL,
	[to_days] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [HS_Stage].[financials_origination_development_ar_fees]    Script Date: 9/28/2021 3:08:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HS_Stage].[financials_origination_development_ar_fees](
	[person_key] [int] NULL,
	[ar0] [decimal](25, 10) NULL,
	[ar1] [decimal](25, 10) NULL,
	[ar2] [decimal](25, 10) NULL,
	[ar3] [decimal](25, 10) NULL,
	[person_role] [varchar](50) NULL,
	[from_days] [int] NULL,
	[to_days] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [HS_Stage].[financials_origination_development_wip_costs]    Script Date: 9/28/2021 3:08:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HS_Stage].[financials_origination_development_wip_costs](
	[person_key] [int] NULL,
	[person_type] [varchar](50) NULL,
	[wip_0_30] [decimal](25, 10) NULL,
	[wip_31_60] [decimal](25, 10) NULL,
	[wip_61_90] [decimal](25, 10) NULL,
	[wip_90_plus] [decimal](25, 10) NULL,
	[total_wip] [decimal](25, 10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [HS_Stage].[financials_origination_development_wip_fees]    Script Date: 9/28/2021 3:08:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HS_Stage].[financials_origination_development_wip_fees](
	[person_key] [int] NULL,
	[person_type] [varchar](50) NULL,
	[wip_0_30] [decimal](25, 10) NULL,
	[wip_31_60] [decimal](25, 10) NULL,
	[wip_61_90] [decimal](25, 10) NULL,
	[wip_90_plus] [decimal](25, 10) NULL,
	[total_wip] [decimal](25, 10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [HS_Stage].[financials_stage]    Script Date: 9/28/2021 3:08:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HS_Stage].[financials_stage](
	[person_key] [int] NULL,
	[person_code] [varchar](50) NULL,
	[person_role] [varchar](50) NULL,
	[ar_fees_0_30] [decimal](25, 10) NULL,
	[ar_fees_31_60] [decimal](25, 10) NULL,
	[ar_fees_61_90] [decimal](25, 10) NULL,
	[ar_fees_90_plus] [decimal](25, 10) NULL,
	[ar_fees_total] [decimal](25, 10) NULL,
	[ar_costs_0_30] [decimal](25, 10) NULL,
	[ar_costs_31_60] [decimal](25, 10) NULL,
	[ar_costs_61_90] [decimal](25, 10) NULL,
	[ar_costs_90_plus] [decimal](25, 10) NULL,
	[ar_costs_total] [decimal](25, 10) NULL,
	[ar_total_fees_and_costs] [decimal](25, 10) NULL,
	[wip_fees_0_30] [decimal](25, 10) NULL,
	[wip_fees_31_60] [decimal](25, 10) NULL,
	[wip_fees_61_90] [decimal](25, 10) NULL,
	[wip_fees_90_plus] [decimal](25, 10) NULL,
	[wip_fees_total] [decimal](25, 10) NULL,
	[wip_costs_0_30] [decimal](25, 10) NULL,
	[wip_costs_31_60] [decimal](25, 10) NULL,
	[wip_costs_61_90] [decimal](25, 10) NULL,
	[wip_costs_90_plus] [decimal](25, 10) NULL,
	[wip_costs_total] [decimal](25, 10) NULL,
	[wip_total_fees_and_costs] [decimal](25, 10) NULL,
	[fees_billed_total] [decimal](25, 10) NULL,
	[cash_receipts_total] [decimal](25, 10) NULL,
	[fees_billed_plus_cash_receipts_total] [decimal](25, 10) NULL,
	[inventory_on_account_disb] [decimal](25, 10) NULL,
	[inventory_unapplied_cash_total] [decimal](25, 10) NULL,
	[inventory_on_account_fees_total] [decimal](25, 10) NULL,
	[effective_bill_rate_total] [decimal](25, 10) NULL,
	[realization_percentage_at_agreed_percentage] [decimal](25, 10) NULL,
	[net_margin] [decimal](25, 10) NULL,
	[hours_billable_current_mtd] [decimal](25, 10) NULL,
	[hours_billable_current_ytd] [decimal](25, 10) NULL,
	[hours_goal_mtd] [decimal](25, 10) NULL,
	[hours_goal_ytd] [decimal](25, 10) NULL,
	[utilization_percentage] [decimal](25, 10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [HS_Stage].[financials_working_ar]    Script Date: 9/28/2021 3:08:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HS_Stage].[financials_working_ar](
	[person_key] [int] NULL,
	[ar_0_30] [decimal](25, 10) NULL,
	[ar_31_60] [decimal](25, 10) NULL,
	[ar_61_90] [decimal](25, 10) NULL,
	[ar_90_plus] [decimal](25, 10) NULL,
	[total_ar] [decimal](25, 10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [HS_Stage].[financials_working_attorney_hours_goal_utilization]    Script Date: 9/28/2021 3:08:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HS_Stage].[financials_working_attorney_hours_goal_utilization](
	[employee_key] [int] NULL,
	[mtdbasehrs] [decimal](25, 10) NULL,
	[mtdbudget] [decimal](25, 10) NULL,
	[ytdbasehrs] [decimal](25, 10) NULL,
	[ytdbudget] [decimal](25, 10) NULL,
	[utilization] [decimal](25, 10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [HS_Stage].[invoice_stage]    Script Date: 9/28/2021 3:08:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HS_Stage].[invoice_stage](
	[billing_person_key] [int] NULL,
	[billing_person_code] [varchar](50) NULL,
	[client_id] [varchar](50) NULL,
	[matter_id] [varchar](50) NULL,
	[client_name] [varchar](500) NULL,
	[matter_name] [varchar](500) NULL,
	[bill_number] [int] NULL,
	[bill_date] [datetime] NULL,
	[bill_age] [int] NULL,
	[total_ar] [int] NULL,
	[bills_outstanding] [int] NULL,
	[total_billed] [int] NULL,
	[total_paid] [int] NULL,
	[avg_payment_days] [int] NULL,
	[expected_payment_date] [datetime] NULL,
	[days_late] [int] NULL,
	[matter_last_rcpt_date] [datetime] NULL,
	[client_last_rcpt_date] [datetime] NULL,
	[bill_last_payment_date] [datetime] NULL,
	[kpi_follow_up] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [HS_Stage].[matter_stage]    Script Date: 9/28/2021 3:08:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HS_Stage].[matter_stage](
	[matter_key] [int] NULL,
	[matter_id] [varchar](50) NULL,
	[matter_name] [varchar](250) NULL,
	[client_key] [int] NULL,
	[client_id] [varchar](50) NULL,
	[billing_person_key] [int] NULL,
	[billing_person_code] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [client_idx2]    Script Date: 9/28/2021 3:08:56 PM ******/
CREATE NONCLUSTERED INDEX [client_idx2] ON [HS].[client]
(
	[client_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [finance_invoice_idx2]    Script Date: 9/28/2021 3:08:56 PM ******/
CREATE NONCLUSTERED INDEX [finance_invoice_idx2] ON [HS].[invoice]
(
	[matter_id] ASC,
	[bill_number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [finance_matter_idx2]    Script Date: 9/28/2021 3:08:56 PM ******/
CREATE NONCLUSTERED INDEX [finance_matter_idx2] ON [HS].[matter]
(
	[matter_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [client_stage_idx1]    Script Date: 9/28/2021 3:08:56 PM ******/
CREATE NONCLUSTERED INDEX [client_stage_idx1] ON [HS_Stage].[client_stage]
(
	[client_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [finance_invoice_stage_idx1]    Script Date: 9/28/2021 3:08:56 PM ******/
CREATE NONCLUSTERED INDEX [finance_invoice_stage_idx1] ON [HS_Stage].[invoice_stage]
(
	[matter_id] ASC,
	[bill_number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [finance_matter_stage_idx1]    Script Date: 9/28/2021 3:08:56 PM ******/
CREATE NONCLUSTERED INDEX [finance_matter_stage_idx1] ON [HS_Stage].[matter_stage]
(
	[matter_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [HS].[client_load]    Script Date: 9/28/2021 3:08:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE procedure [HS].[client_load]
as

declare @date datetime, @cmd nvarchar(1000), @count int

--set date
select @date = getdate()

--truncate staging table
truncate table hs_stage.client_stage

--drop index on staging table
drop index hs_stage.client_stage.client_stage_idx1

--load data to staging table via SSIS

select @cmd = 'C:\"Program Files\Microsoft SQL Server\140\DTS\Binn\dtexec.exe" /ISSERVER "\SSISDB\DataMartSSIS_Prod\DataMartSSIS\ClientAderant.dtsx" /SERVER CINVSQL01 /Par "$ServerOption::SYNCHRONIZED(Boolean)";True'
exec master..xp_cmdshell @cmd

--recreate index on staging table
create index client_stage_idx1 on hs_stage.client_stage(client_id)


--verify there are records in the stage table
select @count = count(*) from hs_stage.client_stage
if @count = 0
begin

return --could replace this with alert logic such as an email to a group or to raise an error to fail the job

end

insert into hs.client(client_key,client_id,client_name,parent_client_id,open_date,close_date,datamart_update_date)
select a.client_key,a.client_id,a.client_name,a.parent_client_id,a.open_date,a.close_date,@date
from hs_stage.client_stage a
where not exists(
select *
from hs.client b
where a.client_id = b.client_id)

update a
set a.client_key = b.client_key,    
a.client_name = b.client_name,    
a.parent_client_id = b.parent_client_id,    
a.open_date = b.open_date,    
a.close_date = b.close_date,    
a.datamart_update_date = @date 
from hs.client a
join hs_stage.client_stage b on a.client_id = b.client_id
where  (isnull(a.[client_key], 2147483647) != isnull(b.[client_key], 2147483647)     
or isnull(a.[client_name], '') != isnull(b.[client_name], '')     
or isnull(a.[parent_client_id], '') != isnull(b.[parent_client_id], '')     
or isnull(a.[open_date], '1/1/1900') != isnull(b.[open_date], '1/1/1900')     
or isnull(a.[close_date], '1/1/1900') != isnull(b.[close_date], '1/1/1900'))

delete a
from hs.client a
where not exists(
select *
from hs_stage.client_stage b
where a.client_id = b.client_id
)

GO
/****** Object:  StoredProcedure [HS].[financials_load]    Script Date: 9/28/2021 3:08:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [HS].[financials_load]
as

declare @date datetime, @cmd nvarchar(1000), @count int

--set date
select @date = getdate()

--truncate staging tables

truncate table hs_stage.financials_allocation_billed_collected_ebr
truncate table hs_stage.financials_billing_attorney_aged_ar
truncate table hs_stage.financials_billing_attorney_and_working_attorney_wip
truncate table hs_stage.financials_billing_attorney_effective_bill_rate_and_billing_realization
truncate table hs_stage.financials_billing_attorney_fees_billed_and_received_YTD
truncate table hs_stage.financials_billing_attorney_inventory
truncate table hs_stage.financials_fees_billed_received_working_attorney
truncate table hs_stage.financials_origination_and_development_net_margin
truncate table hs_stage.financials_origination_development_ar_cost
truncate table hs_stage.financials_origination_development_ar_fees
truncate table hs_stage.financials_origination_development_wip_costs
truncate table hs_stage.financials_origination_development_wip_fees
truncate table hs_stage.financials_stage
truncate table hs_stage.financials_working_ar
truncate table hs_stage.financials_working_attorney_hours_goal_utilization


--load data to staging tables via SSIS


select @cmd = 'C:\"Program Files\Microsoft SQL Server\140\DTS\Binn\dtexec.exe" /ISSERVER "\SSISDB\DataMartSSIS_Prod\DataMartSSIS\Financials_AllocationBilledCollectedEBR.dtsx" /SERVER CINVSQL01 /Par "$ServerOption::SYNCHRONIZED(Boolean)";True'
exec master..xp_cmdshell @cmd

select @cmd = 'C:\"Program Files\Microsoft SQL Server\140\DTS\Binn\dtexec.exe" /ISSERVER "\SSISDB\DataMartSSIS_Prod\DataMartSSIS\Financials_BillingAttorneyAgedAR.dtsx" /SERVER CINVSQL01 /Par "$ServerOption::SYNCHRONIZED(Boolean)";True'
exec master..xp_cmdshell @cmd

select @cmd = 'C:\"Program Files\Microsoft SQL Server\140\DTS\Binn\dtexec.exe" /ISSERVER "\SSISDB\DataMartSSIS_Prod\DataMartSSIS\Financials_BillingAttorneyandWorkingAttorneyWIP.dtsx" /SERVER CINVSQL01 /Par "$ServerOption::SYNCHRONIZED(Boolean)";True'
exec master..xp_cmdshell @cmd

select @cmd = 'C:\"Program Files\Microsoft SQL Server\140\DTS\Binn\dtexec.exe" /ISSERVER "\SSISDB\DataMartSSIS_Prod\DataMartSSIS\Financials_BillingAttorneyEffectiveBillRateandBillingRealization.dtsx" /SERVER CINVSQL01 /Par "$ServerOption::SYNCHRONIZED(Boolean)";True'
exec master..xp_cmdshell @cmd

select @cmd = 'C:\"Program Files\Microsoft SQL Server\140\DTS\Binn\dtexec.exe" /ISSERVER "\SSISDB\DataMartSSIS_Prod\DataMartSSIS\Financials_BillingAttorneyFeesBilledReceivedYTD.dtsx" /SERVER CINVSQL01 /Par "$ServerOption::SYNCHRONIZED(Boolean)";True'
exec master..xp_cmdshell @cmd

select @cmd = 'C:\"Program Files\Microsoft SQL Server\140\DTS\Binn\dtexec.exe" /ISSERVER "\SSISDB\DataMartSSIS_Prod\DataMartSSIS\Financials_BillingAttorneyInventory.dtsx" /SERVER CINVSQL01 /Par "$ServerOption::SYNCHRONIZED(Boolean)";True'
exec master..xp_cmdshell @cmd

select @cmd = 'C:\"Program Files\Microsoft SQL Server\140\DTS\Binn\dtexec.exe" /ISSERVER "\SSISDB\DataMartSSIS_Prod\DataMartSSIS\Financials_FeesBilledandReceivedbyWorkingAttorney.dtsx" /SERVER CINVSQL01 /Par "$ServerOption::SYNCHRONIZED(Boolean)";True'
exec master..xp_cmdshell @cmd

select @cmd = 'C:\"Program Files\Microsoft SQL Server\140\DTS\Binn\dtexec.exe" /ISSERVER "\SSISDB\DataMartSSIS_Prod\DataMartSSIS\Financials_OriginationandDevelopmentARCost.dtsx" /SERVER CINVSQL01 /Par "$ServerOption::SYNCHRONIZED(Boolean)";True'
exec master..xp_cmdshell @cmd

select @cmd = 'C:\"Program Files\Microsoft SQL Server\140\DTS\Binn\dtexec.exe" /ISSERVER "\SSISDB\DataMartSSIS_Prod\DataMartSSIS\Financials_OriginationandDevelopmentARFees.dtsx" /SERVER CINVSQL01 /Par "$ServerOption::SYNCHRONIZED(Boolean)";True'
exec master..xp_cmdshell @cmd

select @cmd = 'C:\"Program Files\Microsoft SQL Server\140\DTS\Binn\dtexec.exe" /ISSERVER "\SSISDB\DataMartSSIS_Prod\DataMartSSIS\financials_OriginationandDevelopmentNetMargin.dtsx" /SERVER CINVSQL01 /Par "$ServerOption::SYNCHRONIZED(Boolean)";True'
exec master..xp_cmdshell @cmd

select @cmd = 'C:\"Program Files\Microsoft SQL Server\140\DTS\Binn\dtexec.exe" /ISSERVER "\SSISDB\DataMartSSIS_Prod\DataMartSSIS\Financials_OriginationandDevelopmentWIPCosts.dtsx" /SERVER CINVSQL01 /Par "$ServerOption::SYNCHRONIZED(Boolean)";True'
exec master..xp_cmdshell @cmd

select @cmd = 'C:\"Program Files\Microsoft SQL Server\140\DTS\Binn\dtexec.exe" /ISSERVER "\SSISDB\DataMartSSIS_Prod\DataMartSSIS\Financials_OriginationandDevelopmentWIPFees.dtsx" /SERVER CINVSQL01 /Par "$ServerOption::SYNCHRONIZED(Boolean)";True'
exec master..xp_cmdshell @cmd

select @cmd = 'C:\"Program Files\Microsoft SQL Server\140\DTS\Binn\dtexec.exe" /ISSERVER "\SSISDB\DataMartSSIS_Prod\DataMartSSIS\Financials_WorkingAR.dtsx" /SERVER CINVSQL01 /Par "$ServerOption::SYNCHRONIZED(Boolean)";True'
exec master..xp_cmdshell @cmd

select @cmd = 'C:\"Program Files\Microsoft SQL Server\140\DTS\Binn\dtexec.exe" /ISSERVER "\SSISDB\DataMartSSIS_Prod\DataMartSSIS\Financials_WorkingAttorneyHoursGoalUtilization.dtsx" /SERVER CINVSQL01 /Par "$ServerOption::SYNCHRONIZED(Boolean)";True'
exec master..xp_cmdshell @cmd


--verify there are records in the stage tables other than hs_stage.financials_stage

select @count = count(*) from hs_stage.financials_allocation_billed_collected_ebr if @count = 0 begin return end
select @count = count(*) from hs_stage.financials_billing_attorney_aged_ar if @count = 0 begin return end
select @count = count(*) from hs_stage.financials_billing_attorney_and_working_attorney_wip if @count = 0 begin return end
select @count = count(*) from hs_stage.financials_billing_attorney_effective_bill_rate_and_billing_realization if @count = 0 begin return end
select @count = count(*) from hs_stage.financials_billing_attorney_fees_billed_and_received_YTD if @count = 0 begin return end
select @count = count(*) from hs_stage.financials_billing_attorney_inventory if @count = 0 begin return end
select @count = count(*) from hs_stage.financials_fees_billed_received_working_attorney if @count = 0 begin return end
select @count = count(*) from hs_stage.financials_origination_and_development_net_margin if @count = 0 begin return end
select @count = count(*) from hs_stage.financials_origination_development_ar_cost if @count = 0 begin return end
select @count = count(*) from hs_stage.financials_origination_development_ar_fees if @count = 0 begin return end
select @count = count(*) from hs_stage.financials_origination_development_wip_costs if @count = 0 begin return end
select @count = count(*) from hs_stage.financials_origination_development_wip_fees if @count = 0 begin return end
select @count = count(*) from hs_stage.financials_working_ar if @count = 0 begin return end
select @count = count(*) from hs_stage.financials_working_attorney_hours_goal_utilization if @count = 0 begin return end


--process hs_stage.financials_stage table

--hs_stage.financials_billing_attorney_aged_ar

insert into hs_stage.financials_stage(person_key, person_code, person_role, ar_fees_0_30, ar_fees_31_60, ar_fees_61_90, ar_fees_90_plus, ar_fees_total)
select person_key, person_code, 'Billing', sum(ar_0_30), sum(ar_31_60), sum(ar_61_90), sum(ar_90_plus), sum(ar_total)
from hs_stage.financials_billing_attorney_aged_ar a
where a.type = 'fees'
and exists(
select * from hs.person_profile b 
where a.person_key = b.adr_empl_uno)
group by person_key, person_code

insert into hs_stage.financials_stage(person_key, person_code, person_role, ar_costs_0_30, ar_costs_31_60, ar_costs_61_90, ar_costs_90_plus, ar_costs_total)
select person_key, person_code, 'Billing', sum(ar_0_30), sum(ar_31_60), sum(ar_61_90), sum(ar_90_plus), sum(ar_total)
from hs_stage.financials_billing_attorney_aged_ar a
where type = 'costs'
and not exists(
select *
from hs_stage.financials_stage b
where a.person_key = b.person_key
and b.person_role = 'Billing')
and exists(
select * from hs.person_profile c 
where a.person_key = c.adr_empl_uno)
group by person_key, person_code

update a 
set a.ar_costs_0_30=b.ar_0_30, 
a.ar_costs_31_60=b.ar_31_60, 
a.ar_costs_61_90=b.ar_61_90, 
a.ar_costs_90_plus=b.ar_90_plus, 
a.ar_costs_total=b.ar_total
from hs_stage.financials_stage a
join (
  select person_key, sum(ar_0_30) ar_0_30, sum(ar_31_60) ar_31_60, sum(ar_61_90) ar_61_90, sum(ar_90_plus) ar_90_plus, sum(ar_total) ar_total
  from hs_stage.financials_billing_attorney_aged_ar 
  where type = 'costs'
  group by person_key
) b on a.person_key = b.person_key
where a.person_role = 'Billing'

update hs_stage.financials_stage
set ar_total_fees_and_costs = isnull(ar_fees_total, 0) + isnull(ar_costs_total, 0)
where person_role = 'Billing'

--hs_stage.financials_billing_attorney_inventory

insert into hs_stage.financials_stage(person_key, person_code, person_role, inventory_unapplied_cash_total, inventory_on_account_fees_total, inventory_on_account_disb)
select a.person_key, b.tkid, 'Billing', a.unapplied, a.on_account_fees, a.on_account_disb
from hs_stage.financials_billing_attorney_inventory a
join hs.person_profile b on a.person_key = b.adr_empl_uno
where not exists(
select *
from hs_stage.financials_stage c
where a.person_key = c.person_key
and c.person_role = 'Billing')

update a
set a.inventory_unapplied_cash_total = b.unapplied,
a.inventory_on_account_fees_total = b.on_account_fees,
a.inventory_on_account_disb = b.on_account_disb
from hs_stage.financials_stage a
join hs_stage.financials_billing_attorney_inventory b on a.person_key = b.person_key
where a.person_role = 'Billing'

--hs_stage.financials_billing_attorney_fees_billed_and_received_YTD

insert into hs_stage.financials_stage(person_key, person_code, person_role, fees_billed_total, cash_receipts_total, fees_billed_plus_cash_receipts_total)
select a.person_key, b.tkid, 'Billing', a.fees_billed, a.fees_received, a.total
from hs_stage.financials_billing_attorney_fees_billed_and_received_YTD a
join hs.person_profile b on a.person_key = b.adr_empl_uno
where not exists(
select *
from hs_stage.financials_stage c
where a.person_key = c.person_key
and c.person_role = 'Billing')

update a
set a.fees_billed_total = b.fees_billed,
a.cash_receipts_total = b.fees_received,
a.fees_billed_plus_cash_receipts_total = b.total
from hs_stage.financials_stage a
join hs_stage.financials_billing_attorney_fees_billed_and_received_YTD b on a.person_key = b.person_key
where a.person_role = 'Billing'

--hs_stage.financials_billing_attorney_effective_bill_rate_and_billing_realization

insert into hs_stage.financials_stage(person_key, person_code, person_role, realization_percentage_at_agreed_percentage, effective_bill_rate_total)
select person_key, person_code, 'Billing', realization, effective_bill_rate
from hs_stage.financials_billing_attorney_effective_bill_rate_and_billing_realization a
join hs.PERSON_PROFILE b on a.person_key = b.adr_empl_uno
where not exists(
select *
from hs_stage.financials_stage c
where a.person_key = c.person_key
and c.person_role = 'Billing')

update a
set a.realization_percentage_at_agreed_percentage = b.realization,
a.effective_bill_rate_total = b.effective_bill_rate
from hs_stage.financials_stage a
join hs_stage.financials_billing_attorney_effective_bill_rate_and_billing_realization b on a.person_key = b.person_key
where a.person_role = 'Billing'

--hs_stage.financials_billing_attorney_and_working_attorney_wip

--old billing attorney logic where it only used the one record where billing attorney = working timekeeper
/*insert into hs_stage.financials_stage(person_key, person_code, person_role, wip_fees_0_30, wip_fees_31_60, wip_fees_61_90, wip_fees_90_plus, wip_fees_total)
select a.billing_employee_key, b.tkid, 'Billing', wip_0_30, wip_31_60, wip_61_90, wip_90_plus, wip_total
from hs_stage.financials_billing_attorney_and_working_attorney_wip a
join hs.person_profile b on a.billing_employee_key = b.ADR_EMPL_UNO
where a.billing_employee_key = a.working_timekeeper_key
and a.type = 'Fees'
and not exists(
select *
from hs_stage.financials_stage c
where a.billing_employee_key = c.person_key
and c.person_role = 'Billing')

update a
set a.wip_fees_0_30 = b.wip_0_30, 
a.wip_fees_31_60 = b.wip_31_60, 
a.wip_fees_61_90 = b.wip_61_90, 
a.wip_fees_90_plus = b.wip_90_plus, 
a.wip_fees_total = b.wip_total --select b.*
from hs_stage.financials_stage a
join hs_stage.financials_billing_attorney_and_working_attorney_wip b on a.person_key = b.billing_employee_key
where a.person_role = 'Billing'
and b.billing_employee_key = b.working_timekeeper_key
and b.type = 'Fees'*/ 

insert into hs_stage.financials_stage(person_key, person_code, person_role, wip_fees_0_30, wip_fees_31_60, wip_fees_61_90, wip_fees_90_plus, wip_fees_total)
select a.billing_employee_key, b.tkid, 'Billing', sum(wip_0_30), sum(wip_31_60), sum(wip_61_90), sum(wip_90_plus), sum(wip_total)
from hs_stage.financials_billing_attorney_and_working_attorney_wip a
join hs.person_profile b on a.billing_employee_key = b.ADR_EMPL_UNO
where a.type = 'Fees'
and not exists(
select *
from hs_stage.financials_stage c
where a.billing_employee_key = c.person_key
and c.person_role = 'Billing')
group by a.billing_employee_key, b.tkid

update a
set a.wip_fees_0_30 = b.wip_0_30, 
a.wip_fees_31_60 = b.wip_31_60, 
a.wip_fees_61_90 = b.wip_61_90, 
a.wip_fees_90_plus = b.wip_90_plus, 
a.wip_fees_total = b.wip_total --select b.*
from hs_stage.financials_stage a
join (
   select billing_employee_key, sum(wip_0_30) wip_0_30, sum(wip_31_60) wip_31_60, sum(wip_61_90) wip_61_90, sum(wip_90_plus) wip_90_plus, sum(wip_total) wip_total
   from hs_stage.financials_billing_attorney_and_working_attorney_wip 
   where type = 'Fees'
   group by billing_employee_key
) b on a.person_key = b.billing_employee_key
where a.person_role = 'Billing'

insert into hs_stage.financials_stage(person_key, person_code, person_role, wip_fees_0_30, wip_fees_31_60, wip_fees_61_90, wip_fees_90_plus, wip_fees_total)
select a.working_timekeeper_key, b.tkid, 'Working', sum(wip_0_30), sum(wip_31_60), sum(wip_61_90), sum(wip_90_plus), sum(wip_total)
from hs_stage.financials_billing_attorney_and_working_attorney_wip a
join hs.person_profile b on a.working_timekeeper_key = b.ADR_EMPL_UNO
where a.type = 'Fees'
and not exists(
select *
from hs_stage.financials_stage c
where a.working_timekeeper_key = c.person_key
and c.person_role = 'Working')
group by a.working_timekeeper_key, b.tkid

update a
set a.wip_fees_0_30 = b.wip_0_30, 
a.wip_fees_31_60 = b.wip_31_60, 
a.wip_fees_61_90 = b.wip_61_90, 
a.wip_fees_90_plus = b.wip_90_plus, 
a.wip_fees_total = b.wip_total --select b.*
from hs_stage.financials_stage a
join (
   select working_timekeeper_key, sum(wip_0_30) wip_0_30, sum(wip_31_60) wip_31_60, sum(wip_61_90) wip_61_90, sum(wip_90_plus) wip_90_plus, sum(wip_total) wip_total
   from hs_stage.financials_billing_attorney_and_working_attorney_wip 
   where type = 'Fees'
   group by working_timekeeper_key
) b on a.person_key = b.working_timekeeper_key
where a.person_role = 'Working'


insert into hs_stage.financials_stage(person_key, person_code, person_role, wip_costs_0_30, wip_costs_31_60, wip_costs_61_90, wip_costs_90_plus, wip_costs_total)
select a.billing_employee_key, b.tkid, 'Billing', wip_0_30, wip_31_60, wip_61_90, wip_90_plus, wip_total
from hs_stage.financials_billing_attorney_and_working_attorney_wip a
join hs.person_profile b on a.billing_employee_key = b.ADR_EMPL_UNO
where a.type = 'Costs'
and not exists(
select *
from hs_stage.financials_stage c
where a.billing_employee_key = c.person_key
and c.person_role = 'Billing')

update a
set a.wip_costs_0_30 = b.wip_0_30, 
a.wip_costs_31_60 = b.wip_31_60, 
a.wip_costs_61_90 = b.wip_61_90, 
a.wip_costs_90_plus = b.wip_90_plus, 
a.wip_costs_total = b.wip_total --select b.*
from hs_stage.financials_stage a
join hs_stage.financials_billing_attorney_and_working_attorney_wip b on a.person_key = b.billing_employee_key
where a.person_role = 'Billing'
and b.type = 'Costs'

update hs_stage.financials_stage
set wip_total_fees_and_costs = isnull(wip_fees_total, 0) + isnull(wip_costs_total, 0)
where person_role in ('Billing', 'Working')


--hs_stage.financials_origination_and_development_net_margin

insert into hs_stage.financials_stage(person_key, person_code, person_role, net_margin)
select a.employe_key, b.tkid, 'Originating', a.net_margin
from hs_stage.financials_origination_and_development_net_margin a
join hs.person_profile b on a.employe_key = b.ADR_EMPL_UNO
where not exists(
select *
from hs_stage.financials_stage c
where a.employe_key = c.person_key
and c.person_role = 'Originating')
and a.attorney_type = 'Matter Origination Attorney'

update a
set a.net_margin = b.net_margin
from hs_stage.financials_stage a
join hs_stage.financials_origination_and_development_net_margin b on a.person_key = b.employe_key
join hs.person_profile c on b.employe_key = c.ADR_EMPL_UNO
where a.person_role = 'Originating'
and b.attorney_type = 'Matter Origination Attorney'

insert into hs_stage.financials_stage(person_key, person_code, person_role, net_margin)
select a.employe_key, b.tkid, 'Development', a.net_margin
from hs_stage.financials_origination_and_development_net_margin a
join hs.person_profile b on a.employe_key = b.ADR_EMPL_UNO
where not exists(
select *
from hs_stage.financials_stage c
where a.employe_key = c.person_key
and c.person_role = 'Development')
and a.attorney_type = 'Matter Development Attorney'

update a
set a.net_margin = b.net_margin
from hs_stage.financials_stage a
join hs_stage.financials_origination_and_development_net_margin b on a.person_key = b.employe_key
join hs.person_profile c on b.employe_key = c.ADR_EMPL_UNO
where a.person_role = 'Development'
and b.attorney_type = 'Matter Development Attorney'

--hs_stage.financials_working_attorney_hours_goal_utilization

insert into hs_stage.financials_stage(person_key, person_code, person_role, hours_billable_current_mtd, hours_billable_current_ytd, hours_goal_mtd, hours_goal_ytd, utilization_percentage)
select a.employee_key, b.tkid, 'Working', mtdbasehrs, ytdbasehrs, mtdbudget, ytdbudget, utilization
from hs_stage.financials_working_attorney_hours_goal_utilization a
join hs.person_profile b on a.employee_key = b.ADR_EMPL_UNO
where not exists(
select *
from hs_stage.financials_stage c
where a.employee_key = c.person_key
and c.person_role = 'Working')

update a
set a.hours_billable_current_mtd = b.mtdbasehrs, 
a.hours_billable_current_ytd = b.ytdbasehrs, 
a.hours_goal_mtd = b.mtdbudget, 
a.hours_goal_ytd = b.ytdbudget, 
a.utilization_percentage = b.utilization
from hs_stage.financials_stage a
join hs_stage.financials_working_attorney_hours_goal_utilization b on a.person_key = b.employee_key
where a.person_role = 'Working'


--hs_stage.financials_allocation_billed_collected_ebr


insert into hs_stage.financials_stage(person_key, person_code, person_role, fees_billed_total, cash_receipts_total, fees_billed_plus_cash_receipts_total, 
                                      realization_percentage_at_agreed_percentage, effective_bill_rate_total)
select b.ADR_EMPL_UNO, a.employee_code, 'Originating', feesbillYTD, feescolYTD, realization, ebr, feesbillYTD + feescolYTD
from hs_stage.financials_allocation_billed_collected_ebr a
join hs.person_profile b on a.employee_code = b.tkid
where not exists(
select *
from hs_stage.financials_stage c
where a.employee_code = c.person_code
and c.person_role = 'Originating')
and a.attorney_type = 'ORIG'

update a
set a.fees_billed_total = b.feesbillYTD, 
a.cash_receipts_total = b.feescolYTD, 
a.fees_billed_plus_cash_receipts_total = b.feesbillYTD  + b.feescolYTD, 
a.realization_percentage_at_agreed_percentage = b.realization, 
a.effective_bill_rate_total = b.ebr
from hs_stage.financials_stage a
join hs_stage.financials_allocation_billed_collected_ebr b on a.person_code = b.employee_code
where a.person_role = 'Originating'
and b.attorney_type = 'ORIG'

insert into hs_stage.financials_stage(person_key, person_code, person_role, fees_billed_total, cash_receipts_total, fees_billed_plus_cash_receipts_total, 
                                      realization_percentage_at_agreed_percentage, effective_bill_rate_total)
select b.ADR_EMPL_UNO, a.employee_code, 'Development', feesbillYTD, feescolYTD, realization, ebr, feesbillYTD + feescolYTD
from hs_stage.financials_allocation_billed_collected_ebr a
join hs.person_profile b on a.employee_code = b.tkid
where not exists(
select *
from hs_stage.financials_stage c
where a.employee_code = c.person_code
and c.person_role = 'Development')
and a.attorney_type = 'RESP'

update a
set a.fees_billed_total = b.feesbillYTD, 
a.cash_receipts_total = b.feescolYTD, 
a.fees_billed_plus_cash_receipts_total = b.feesbillYTD  + b.feescolYTD, 
a.realization_percentage_at_agreed_percentage = b.realization, 
a.effective_bill_rate_total = b.ebr
from hs_stage.financials_stage a
join hs_stage.financials_allocation_billed_collected_ebr b on a.person_code = b.employee_code
where a.person_role = 'Development'
and b.attorney_type = 'RESP'

--hs_stage.financials_fees_billed_received_working_attorney

insert into hs_stage.financials_stage(person_key, person_code, person_role, fees_billed_total, cash_receipts_total, fees_billed_plus_cash_receipts_total)
select a.employee_key, b.tkid, 'Working', a.feesbilled, a.feesreceived, a.feesbilled + a.feesreceived
from hs_stage.financials_fees_billed_received_working_attorney a
join hs.PERSON_PROFILE b on a.employee_key = b.ADR_EMPL_UNO
where not exists(
select *
from hs_stage.financials_stage c
where a.employee_key = c.person_key
and c.person_role = 'Working'
)

update a
set a.fees_billed_total = b.feesbilled,
a.cash_receipts_total = b.feesreceived,
a.fees_billed_plus_cash_receipts_total = b.feesbilled + b.feesreceived
from hs_stage.financials_stage a
join hs_stage.financials_fees_billed_received_working_attorney b on a.person_key = b.employee_key
where a.person_role = 'Working'


--hs_stage.financials_origination_development_wip_fees

insert into hs_stage.financials_stage(person_key, person_code, person_role, wip_fees_0_30, wip_fees_31_60, wip_fees_61_90, wip_fees_90_plus, wip_fees_total)
select a.person_key, b.tkid, 'Originating', a.wip_0_30, a.wip_31_60, a.wip_61_90, a.wip_90_plus, a.total_wip
from hs_stage.financials_origination_development_wip_fees a
join hs.PERSON_PROFILE b on a.person_key = b.ADR_EMPL_UNO 
where not exists(
select *
from hs_stage.financials_stage c
where a.person_key = c.person_key
and c.person_role = 'Originating'
)
and a.person_type = 'ORIG'

update a
set a.wip_fees_0_30 = b.wip_0_30,
a.wip_fees_31_60 = b.wip_31_60,
a.wip_fees_61_90 = b.wip_61_90,
a.wip_fees_90_plus = b.wip_90_plus,
a.wip_fees_total = b.total_wip --select a.*
from hs_stage.financials_stage a
join hs_stage.financials_origination_development_wip_fees b on a.person_key = b.person_key
where a.person_role = 'Originating'
and b.person_type = 'ORIG'

insert into hs_stage.financials_stage(person_key, person_code, person_role, wip_fees_0_30, wip_fees_31_60, wip_fees_61_90, wip_fees_90_plus, wip_fees_total)
select a.person_key, b.tkid, 'Development', a.wip_0_30, a.wip_31_60, a.wip_61_90, a.wip_90_plus, a.total_wip
from hs_stage.financials_origination_development_wip_fees a
join hs.PERSON_PROFILE b on a.person_key = b.ADR_EMPL_UNO 
where not exists(
select *
from hs_stage.financials_stage c
where a.person_key = c.person_key
and c.person_role = 'Development'
)
and a.person_type = 'RESP'

update a
set a.wip_fees_0_30 = b.wip_0_30,
a.wip_fees_31_60 = b.wip_31_60,
a.wip_fees_61_90 = b.wip_61_90,
a.wip_fees_90_plus = b.wip_90_plus,
a.wip_fees_total = b.total_wip --select a.*
from hs_stage.financials_stage a
join hs_stage.financials_origination_development_wip_fees b on a.person_key = b.person_key
where a.person_role = 'Development'
and b.person_type = 'RESP'

--hs_stage.financials_origination_development_wip_costs

insert into hs_stage.financials_stage(person_key, person_code, person_role, wip_costs_0_30, wip_costs_31_60, wip_costs_61_90, wip_costs_90_plus, wip_costs_total)
select a.person_key, b.tkid, 'Originating', a.wip_0_30, a.wip_31_60, a.wip_61_90, a.wip_90_plus, a.total_wip
from hs_stage.financials_origination_development_wip_costs a
join hs.PERSON_PROFILE b on a.person_key = b.ADR_EMPL_UNO 
where not exists(
select *
from hs_stage.financials_stage c
where a.person_key = c.person_key
and c.person_role = 'Originating'
)
and a.person_type = 'ORIG'

update a
set a.wip_costs_0_30 = b.wip_0_30,
a.wip_costs_31_60 = b.wip_31_60,
a.wip_costs_61_90 = b.wip_61_90,
a.wip_costs_90_plus = b.wip_90_plus,
a.wip_costs_total = b.total_wip --select a.*
from hs_stage.financials_stage a
join hs_stage.financials_origination_development_wip_costs b on a.person_key = b.person_key
where a.person_role = 'Originating'
and b.person_type = 'ORIG'

insert into hs_stage.financials_stage(person_key, person_code, person_role, wip_costs_0_30, wip_costs_31_60, wip_costs_61_90, wip_costs_90_plus, wip_costs_total)
select a.person_key, b.tkid, 'Development', a.wip_0_30, a.wip_31_60, a.wip_61_90, a.wip_90_plus, a.total_wip
from hs_stage.financials_origination_development_wip_costs a
join hs.PERSON_PROFILE b on a.person_key = b.ADR_EMPL_UNO 
where not exists(
select *
from hs_stage.financials_stage c
where a.person_key = c.person_key
and c.person_role = 'Development'
)
and a.person_type = 'RESP'

update a
set a.wip_costs_0_30 = b.wip_0_30,
a.wip_costs_31_60 = b.wip_31_60,
a.wip_costs_61_90 = b.wip_61_90,
a.wip_costs_90_plus = b.wip_90_plus,
a.wip_costs_total = b.total_wip --select a.*
from hs_stage.financials_stage a
join hs_stage.financials_origination_development_wip_costs b on a.person_key = b.person_key
where a.person_role = 'Development'
and b.person_type = 'RESP'

update hs_stage.financials_stage
set wip_total_fees_and_costs = isnull(wip_fees_total, 0) + isnull(wip_costs_total, 0)
where person_role in ('Development', 'Originating')

--hs_stage.financials_working_ar

insert into hs_stage.financials_stage(person_key, person_code, person_role, ar_fees_0_30, ar_fees_31_60, ar_fees_61_90, ar_fees_90_plus, ar_fees_total)
select a.person_key, b.tkid, 'Working', a.ar_0_30, a.ar_31_60, a.ar_61_90, a.ar_90_plus, a.total_ar
from hs_stage.financials_working_ar a
join hs.PERSON_PROFILE b on a.person_key = b.ADR_EMPL_UNO 
where not exists(
select *
from hs_stage.financials_stage c
where a.person_key = c.person_key
and c.person_role = 'Working'
)


update a
set a.ar_fees_0_30 = b.ar_0_30,
a.ar_fees_31_60 = b.ar_31_60,
a.ar_fees_61_90 = b.ar_61_90,
a.ar_fees_90_plus = b.ar_90_plus,
a.ar_fees_total = b.total_ar --select a.*
from hs_stage.financials_stage a
join hs_stage.financials_working_ar b on a.person_key = b.person_key
where a.person_role = 'Working'

update hs_stage.financials_stage
set ar_total_fees_and_costs = ar_fees_total
where person_role = 'Working'

--hs_stage.financials_origination_development_ar_fees

insert into hs_stage.financials_stage(person_key, person_code, person_role, ar_fees_0_30, ar_fees_31_60, ar_fees_61_90, ar_fees_90_plus, ar_fees_total)
select a.person_key, b.tkid, 'Development', sum(isnull(a.ar0, 0)), sum(isnull(a.ar1, 0)), sum(isnull(a.ar2, 0)), sum(isnull(a.ar3, 0)), 
sum(isnull(a.ar0, 0)) + sum(isnull(a.ar1, 0)) + sum(isnull(a.ar2, 0)) + sum(isnull(a.ar3, 0))
from hs_stage.financials_origination_development_ar_fees a
join hs.PERSON_PROFILE b on a.person_key = b.ADR_EMPL_UNO
where a.person_role = 'resp'
and not exists(
select *
from hs_stage.financials_stage c
where a.person_key = c.person_key
and c.person_role = 'Development')
group by a.person_key, b.tkid

update a
set a.ar_fees_0_30 = b.ar0,
a.ar_fees_31_60 = b.ar1,
a.ar_fees_61_90 = b.ar2,
a.ar_fees_90_plus = b.ar3, 
a.ar_fees_total = b.ar_fees_total
from hs_stage.financials_stage a
join (
   select person_key, sum(isnull(ar0, 0)) ar0, sum(isnull(ar1, 0)) ar1, sum(isnull(ar2, 0)) ar2, sum(isnull(ar3, 0)) ar3, 
   sum(isnull(ar0, 0)) + sum(isnull(ar1, 0)) + sum(isnull(ar2, 0)) + sum(isnull(ar3, 0)) ar_fees_total
   from hs_stage.financials_origination_development_ar_fees
   where person_role = 'resp'
   group by person_key
) b on a.person_key = b.person_key
where a.person_role = 'Development'


insert into hs_stage.financials_stage(person_key, person_code, person_role, ar_fees_0_30, ar_fees_31_60, ar_fees_61_90, ar_fees_90_plus, ar_fees_total)
select a.person_key, b.tkid, 'Originating', sum(isnull(a.ar0, 0)), sum(isnull(a.ar1, 0)), sum(isnull(a.ar2, 0)), sum(isnull(a.ar3, 0)), 
sum(isnull(a.ar0, 0)) + sum(isnull(a.ar1, 0)) + sum(isnull(a.ar2, 0)) + sum(isnull(a.ar3, 0))
from hs_stage.financials_origination_development_ar_fees a
join hs.PERSON_PROFILE b on a.person_key = b.ADR_EMPL_UNO
where a.person_role = 'orig'
and not exists(
select *
from hs_stage.financials_stage c
where a.person_key = c.person_key
and c.person_role = 'Originating')
group by a.person_key, b.tkid

update a
set a.ar_fees_0_30 = b.ar0,
a.ar_fees_31_60 = b.ar1,
a.ar_fees_61_90 = b.ar2,
a.ar_fees_90_plus = b.ar3, 
a.ar_fees_total = b.ar_fees_total --select a.*
from hs_stage.financials_stage a
join (
   select person_key, sum(isnull(ar0, 0)) ar0, sum(isnull(ar1, 0)) ar1, sum(isnull(ar2, 0)) ar2, sum(isnull(ar3, 0)) ar3, 
   sum(isnull(ar0, 0)) + sum(isnull(ar1, 0)) + sum(isnull(ar2, 0)) + sum(isnull(ar3, 0)) ar_fees_total
   from hs_stage.financials_origination_development_ar_fees
   where person_role = 'orig'
   group by person_key
) b on a.person_key = b.person_key
where a.person_role = 'Originating'

--hs_stage.financials_origination_development_ar_cost

insert into hs_stage.financials_stage(person_key, person_code, person_role, ar_costs_0_30, ar_costs_31_60, ar_costs_61_90, ar_costs_90_plus, ar_costs_total)
select a.person_key, b.tkid, 'Development', sum(isnull(a.ar0, 0)), sum(isnull(a.ar1, 0)), sum(isnull(a.ar2, 0)), sum(isnull(a.ar3, 0)), 
sum(isnull(a.ar0, 0)) + sum(isnull(a.ar1, 0)) + sum(isnull(a.ar2, 0)) + sum(isnull(a.ar3, 0))
from hs_stage.financials_origination_development_ar_cost a
join hs.PERSON_PROFILE b on a.person_key = b.ADR_EMPL_UNO
where a.person_role = 'resp'
and not exists(
select *
from hs_stage.financials_stage c
where a.person_key = c.person_key
and c.person_role = 'Development')
group by a.person_key, b.tkid

update a
set a.ar_costs_0_30 = b.ar0,
a.ar_costs_31_60 = b.ar1,
a.ar_costs_61_90 = b.ar2,
a.ar_costs_90_plus = b.ar3, 
a.ar_costs_total = b.ar_costs_total
from hs_stage.financials_stage a
join (
   select person_key, sum(isnull(ar0, 0)) ar0, sum(isnull(ar1, 0)) ar1, sum(isnull(ar2, 0)) ar2, sum(isnull(ar3, 0)) ar3, 
   sum(isnull(ar0, 0)) + sum(isnull(ar1, 0)) + sum(isnull(ar2, 0)) + sum(isnull(ar3, 0)) ar_costs_total
   from hs_stage.financials_origination_development_ar_cost
   where person_role = 'resp'
   group by person_key
) b on a.person_key = b.person_key
where a.person_role = 'Development'

insert into hs_stage.financials_stage(person_key, person_code, person_role, ar_costs_0_30, ar_costs_31_60, ar_costs_61_90, ar_costs_90_plus, ar_costs_total)
select a.person_key, b.tkid, 'Originating', sum(isnull(a.ar0, 0)), sum(isnull(a.ar1, 0)), sum(isnull(a.ar2, 0)), sum(isnull(a.ar3, 0)), 
sum(isnull(a.ar0, 0)) + sum(isnull(a.ar1, 0)) + sum(isnull(a.ar2, 0)) + sum(isnull(a.ar3, 0))
from hs_stage.financials_origination_development_ar_cost a
join hs.PERSON_PROFILE b on a.person_key = b.ADR_EMPL_UNO
where a.person_role = 'orig'
and not exists(
select *
from hs_stage.financials_stage c
where a.person_key = c.person_key
and c.person_role = 'Originating')
group by a.person_key, b.tkid

update a
set a.ar_costs_0_30 = b.ar0,
a.ar_costs_31_60 = b.ar1,
a.ar_costs_61_90 = b.ar2,
a.ar_costs_90_plus = b.ar3, 
a.ar_costs_total = b.ar_costs_total --select a.*
from hs_stage.financials_stage a 
join (
   select person_key, sum(isnull(ar0, 0)) ar0, sum(isnull(ar1, 0)) ar1, sum(isnull(ar2, 0)) ar2, sum(isnull(ar3, 0)) ar3, 
   sum(isnull(ar0, 0)) + sum(isnull(ar1, 0)) + sum(isnull(ar2, 0)) + sum(isnull(ar3, 0)) ar_costs_total
   from hs_stage.financials_origination_development_ar_cost
   where person_role = 'orig'
   group by person_key
) b on a.person_key = b.person_key
where a.person_role = 'Originating'

update hs_stage.financials_stage
set ar_total_fees_and_costs = isnull(ar_fees_total, 0) + isnull(ar_costs_total, 0)
where person_role in ('Originating', 'Development')




insert into hs.financials(person_key,person_code,person_role,ar_fees_0_30,ar_fees_31_60,ar_fees_61_90,ar_fees_90_plus,
ar_fees_total,ar_costs_0_30,ar_costs_31_60,ar_costs_61_90,ar_costs_90_plus,ar_costs_total,
ar_total_fees_and_costs,wip_fees_0_30,wip_fees_31_60,wip_fees_61_90,wip_fees_90_plus,wip_fees_total,
wip_costs_0_30,wip_costs_31_60,wip_costs_61_90,wip_costs_90_plus,wip_costs_total,
wip_total_fees_and_costs,fees_billed_total,cash_receipts_total,fees_billed_plus_cash_receipts_total,
inventory_on_account_disb,inventory_unapplied_cash_total,inventory_on_account_fees_total,
effective_bill_rate_total,realization_percentage_at_agreed_percentage,net_margin,
hours_billable_current_mtd,hours_billable_current_ytd,hours_goal_mtd,hours_goal_ytd,
utilization_percentage,datamart_update_date)
select a.person_key,a.person_code,a.person_role,a.ar_fees_0_30,a.ar_fees_31_60,a.ar_fees_61_90,
a.ar_fees_90_plus,a.ar_fees_total,a.ar_costs_0_30,a.ar_costs_31_60,a.ar_costs_61_90,
a.ar_costs_90_plus,a.ar_costs_total,a.ar_total_fees_and_costs,a.wip_fees_0_30,a.wip_fees_31_60,
a.wip_fees_61_90,a.wip_fees_90_plus,a.wip_fees_total,a.wip_costs_0_30,a.wip_costs_31_60,
a.wip_costs_61_90,a.wip_costs_90_plus,a.wip_costs_total,a.wip_total_fees_and_costs,
a.fees_billed_total,a.cash_receipts_total,a.fees_billed_plus_cash_receipts_total,
a.inventory_on_account_disb,a.inventory_unapplied_cash_total,a.inventory_on_account_fees_total,
a.effective_bill_rate_total,a.realization_percentage_at_agreed_percentage,a.net_margin,
a.hours_billable_current_mtd,a.hours_billable_current_ytd,a.hours_goal_mtd,a.hours_goal_ytd,
a.utilization_percentage,@date
from hs_stage.financials_stage a
where not exists(
select *
from hs.financials b
where a.person_key = b.person_key
and a.person_role = b.person_role)

update a
set a.person_code = b.person_code,    
a.person_role = b.person_role,    
a.ar_fees_0_30 = b.ar_fees_0_30,    
a.ar_fees_31_60 = b.ar_fees_31_60,    
a.ar_fees_61_90 = b.ar_fees_61_90,    
a.ar_fees_90_plus = b.ar_fees_90_plus,    
a.ar_fees_total = b.ar_fees_total,    
a.ar_costs_0_30 = b.ar_costs_0_30,    
a.ar_costs_31_60 = b.ar_costs_31_60,    
a.ar_costs_61_90 = b.ar_costs_61_90,    
a.ar_costs_90_plus = b.ar_costs_90_plus,   
a.ar_costs_total = b.ar_costs_total,    
a.ar_total_fees_and_costs = b.ar_total_fees_and_costs,    
a.wip_fees_0_30 = b.wip_fees_0_30,    
a.wip_fees_31_60 = b.wip_fees_31_60,    
a.wip_fees_61_90 = b.wip_fees_61_90,    
a.wip_fees_90_plus = b.wip_fees_90_plus,    
a.wip_fees_total = b.wip_fees_total,    
a.wip_costs_0_30 = b.wip_costs_0_30,    
a.wip_costs_31_60 = b.wip_costs_31_60,    
a.wip_costs_61_90 = b.wip_costs_61_90,    
a.wip_costs_90_plus = b.wip_costs_90_plus,    
a.wip_costs_total = b.wip_costs_total,    
a.wip_total_fees_and_costs = b.wip_total_fees_and_costs,    
a.fees_billed_total = b.fees_billed_total,    
a.cash_receipts_total = b.cash_receipts_total,    
a.fees_billed_plus_cash_receipts_total = b.fees_billed_plus_cash_receipts_total,    
a.inventory_on_account_disb = b.inventory_on_account_disb,    
a.inventory_unapplied_cash_total = b.inventory_unapplied_cash_total,    
a.inventory_on_account_fees_total = b.inventory_on_account_fees_total,    
a.effective_bill_rate_total = b.effective_bill_rate_total,    
a.realization_percentage_at_agreed_percentage = b.realization_percentage_at_agreed_percentage,    
a.net_margin = b.net_margin,    
a.hours_billable_current_mtd = b.hours_billable_current_mtd,    
a.hours_billable_current_ytd = b.hours_billable_current_ytd,    
a.hours_goal_mtd = b.hours_goal_mtd,    
a.hours_goal_ytd = b.hours_goal_ytd,    
a.utilization_percentage = b.utilization_percentage,    
a.datamart_update_date = @date 
from hs.financials a
join hs_stage.financials_stage b on a.person_key = b.person_key and a.person_role = b.person_role
where  (isnull(a.[person_code], '') != isnull(b.[person_code], '')     
or isnull(a.[person_role], '') != isnull(b.[person_role], '')     
or isnull(a.[ar_fees_0_30], 999999999999999) != isnull(b.[ar_fees_0_30], 999999999999999)     
or isnull(a.[ar_fees_31_60], 999999999999999) != isnull(b.[ar_fees_31_60], 999999999999999)     
or isnull(a.[ar_fees_61_90], 999999999999999) != isnull(b.[ar_fees_61_90], 999999999999999)     
or isnull(a.[ar_fees_90_plus], 999999999999999) != isnull(b.[ar_fees_90_plus], 999999999999999)     
or isnull(a.[ar_fees_total], 999999999999999) != isnull(b.[ar_fees_total], 999999999999999)     
or isnull(a.[ar_costs_0_30], 999999999999999) != isnull(b.[ar_costs_0_30], 999999999999999)     
or isnull(a.[ar_costs_31_60], 999999999999999) != isnull(b.[ar_costs_31_60], 999999999999999)     
or isnull(a.[ar_costs_61_90], 999999999999999) != isnull(b.[ar_costs_61_90], 999999999999999)     
or isnull(a.[ar_costs_90_plus], 999999999999999) != isnull(b.[ar_costs_90_plus], 999999999999999)     
or isnull(a.[ar_costs_total], 999999999999999) != isnull(b.[ar_costs_total], 999999999999999)     
or isnull(a.[ar_total_fees_and_costs], 999999999999999) != isnull(b.[ar_total_fees_and_costs], 999999999999999)     
or isnull(a.[wip_fees_0_30], 999999999999999) != isnull(b.[wip_fees_0_30], 999999999999999)     
or isnull(a.[wip_fees_31_60], 999999999999999) != isnull(b.[wip_fees_31_60], 999999999999999)     
or isnull(a.[wip_fees_61_90], 999999999999999) != isnull(b.[wip_fees_61_90], 999999999999999)     
or isnull(a.[wip_fees_90_plus], 999999999999999) != isnull(b.[wip_fees_90_plus], 999999999999999)     
or isnull(a.[wip_fees_total], 999999999999999) != isnull(b.[wip_fees_total], 999999999999999)     
or isnull(a.[wip_costs_0_30], 999999999999999) != isnull(b.[wip_costs_0_30], 999999999999999)     
or isnull(a.[wip_costs_31_60], 999999999999999) != isnull(b.[wip_costs_31_60], 999999999999999)     
or isnull(a.[wip_costs_61_90], 999999999999999) != isnull(b.[wip_costs_61_90], 999999999999999)     
or isnull(a.[wip_costs_90_plus], 999999999999999) != isnull(b.[wip_costs_90_plus], 999999999999999)     
or isnull(a.[wip_costs_total], 999999999999999) != isnull(b.[wip_costs_total], 999999999999999)     
or isnull(a.[wip_total_fees_and_costs], 999999999999999) != isnull(b.[wip_total_fees_and_costs], 999999999999999)     
or isnull(a.[fees_billed_total], 999999999999999) != isnull(b.[fees_billed_total], 999999999999999)     
or isnull(a.[cash_receipts_total], 999999999999999) != isnull(b.[cash_receipts_total], 999999999999999)     
or isnull(a.[fees_billed_plus_cash_receipts_total], 999999999999999) != isnull(b.[fees_billed_plus_cash_receipts_total], 999999999999999)     
or isnull(a.[inventory_on_account_disb], 999999999999999) != isnull(b.[inventory_on_account_disb], 999999999999999)     
or isnull(a.[inventory_unapplied_cash_total], 999999999999999) != isnull(b.[inventory_unapplied_cash_total], 999999999999999)     
or isnull(a.[inventory_on_account_fees_total], 999999999999999) != isnull(b.[inventory_on_account_fees_total], 999999999999999)     
or isnull(a.[effective_bill_rate_total], 999999999999999) != isnull(b.[effective_bill_rate_total], 999999999999999)     
or isnull(a.[realization_percentage_at_agreed_percentage], 999999999999999) != isnull(b.[realization_percentage_at_agreed_percentage], 999999999999999)     
or isnull(a.[net_margin], 999999999999999) != isnull(b.[net_margin], 999999999999999)     
or isnull(a.[hours_billable_current_mtd], 999999999999999) != isnull(b.[hours_billable_current_mtd], 999999999999999)     
or isnull(a.[hours_billable_current_ytd], 999999999999999) != isnull(b.[hours_billable_current_ytd], 999999999999999)     
or isnull(a.[hours_goal_mtd], 999999999999999) != isnull(b.[hours_goal_mtd], 999999999999999)     
or isnull(a.[hours_goal_ytd], 999999999999999) != isnull(b.[hours_goal_ytd], 999999999999999)     
or isnull(a.[utilization_percentage], 999999999999999) != isnull(b.[utilization_percentage], 999999999999999))

delete a
from hs.financials a
where not exists(
select *
from hs_stage.financials_stage b
where a.person_key = b.person_key
and a.person_role = b.person_role
)

GO
/****** Object:  StoredProcedure [HS].[invoice_load]    Script Date: 9/28/2021 3:08:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create procedure [HS].[invoice_load]
as

declare @date datetime, @cmd nvarchar(1000), @count int

--set date
select @date = getdate()

--truncate staging table
truncate table hs_stage.invoice_stage

--drop index on staging table
drop index hs_stage.invoice_stage.finance_invoice_stage_idx1

--load data to staging table via SSIS

select @cmd = 'C:\"Program Files\Microsoft SQL Server\140\DTS\Binn\dtexec.exe" /ISSERVER "\SSISDB\DataMartSSIS_Prod\DataMartSSIS\InvoiceAderant.dtsx" /SERVER CINVSQL01 /Par "$ServerOption::SYNCHRONIZED(Boolean)";True'
exec master..xp_cmdshell @cmd

--recreate index on staging table
create index finance_invoice_stage_idx1 on HS_STAGE.invoice_stage(matter_id, bill_number)


--verify there are records in the stage table
select @count = count(*) from hs_stage.invoice_stage
if @count = 0
begin

return --could replace this with alert logic such as an email to a group or to raise an error to fail the job

end

insert into hs.invoice(billing_person_key,billing_person_code,client_id,matter_id,client_name,matter_name,bill_number,
bill_date,bill_age,total_ar,bills_outstanding,total_billed,total_paid,avg_payment_days,
expected_payment_date,days_late,matter_last_rcpt_date,client_last_rcpt_date,bill_last_payment_date,kpi_follow_up,
datamart_update_date)
select a.billing_person_key,a.billing_person_code,a.client_id,a.matter_id,a.client_name,a.matter_name,
a.bill_number,a.bill_date,a.bill_age,a.total_ar,a.bills_outstanding,a.total_billed,a.total_paid,
a.avg_payment_days,a.expected_payment_date,a.days_late,a.matter_last_rcpt_date,
a.client_last_rcpt_date,a.bill_last_payment_date,a.kpi_follow_up,@date
from hs_stage.invoice_stage a
where not exists(
select *
from hs.invoice b
where a.matter_id = b.matter_id
and a.bill_number = b.bill_Number)

update a
set a.billing_person_key = b.billing_person_key,    
a.billing_person_code = b.billing_person_code,    
a.client_id = b.client_id,    
a.client_name = b.client_name,    
a.matter_name = b.matter_name,    
a.bill_date = b.bill_date,    
a.bill_age = b.bill_age,    
a.total_ar = b.total_ar,    
a.bills_outstanding = b.bills_outstanding,    
a.total_billed = b.total_billed,    
a.total_paid = b.total_paid,    
a.avg_payment_days = b.avg_payment_days,    
a.expected_payment_date = b.expected_payment_date,    
a.days_late = b.days_late,    
a.matter_last_rcpt_date = b.matter_last_rcpt_date,    
a.client_last_rcpt_date = b.client_last_rcpt_date,    
a.bill_last_payment_date = b.bill_last_payment_date,
a.kpi_follow_up = b.kpi_follow_up,
a.datamart_update_date = @date 
from hs.invoice a
join hs_stage.invoice_stage b on a.matter_id = b.matter_id and a.bill_number = b.bill_number
where  (isnull(a.[billing_person_key], 2147483647) != isnull(b.[billing_person_key], 2147483647)     
or isnull(a.[billing_person_code], '') != isnull(b.[billing_person_code], '')     
or isnull(a.[client_id], '') != isnull(b.[client_id], '')     
or isnull(a.[client_name], '') != isnull(b.[client_name], '')     
or isnull(a.[matter_name], '') != isnull(b.[matter_name], '')     
or isnull(a.[bill_date], '1/1/1900') != isnull(b.[bill_date], '1/1/1900')     
or isnull(a.[bill_age], 2147483647) != isnull(b.[bill_age], 2147483647)     
or isnull(a.[total_ar], 2147483647) != isnull(b.[total_ar], 2147483647)     
or isnull(a.[bills_outstanding], 2147483647) != isnull(b.[bills_outstanding], 2147483647)     
or isnull(a.[total_billed], 2147483647) != isnull(b.[total_billed], 2147483647)     
or isnull(a.[total_paid], 2147483647) != isnull(b.[total_paid], 2147483647)     
or isnull(a.[avg_payment_days], 2147483647) != isnull(b.[avg_payment_days], 2147483647)     
or isnull(a.[expected_payment_date], '1/1/1900') != isnull(b.[expected_payment_date], '1/1/1900')     
or isnull(a.[days_late], 2147483647) != isnull(b.[days_late], 2147483647)     
or isnull(a.[matter_last_rcpt_date], '1/1/1900') != isnull(b.[matter_last_rcpt_date], '1/1/1900')     
or isnull(a.[client_last_rcpt_date], '1/1/1900') != isnull(b.[client_last_rcpt_date], '1/1/1900')     
or isnull(a.[bill_last_payment_date], '1/1/1900') != isnull(b.[bill_last_payment_date], '1/1/1900')
or isnull(a.kpi_follow_up, '') != isnull(b.kpi_follow_up, ''))

delete a
from hs.invoice a
where not exists(
select *
from hs_stage.invoice_stage b
where a.matter_id = b.matter_id
and a.bill_number = b.bill_number
)
GO
/****** Object:  StoredProcedure [HS].[matter_load]    Script Date: 9/28/2021 3:08:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE procedure [HS].[matter_load]
as

declare @date datetime, @cmd nvarchar(1000), @count int

--set date
select @date = getdate()

--truncate staging table
truncate table hs_stage.matter_stage

--drop index on staging table
drop index hs_stage.matter_stage.finance_matter_stage_idx1


select @cmd = 'C:\"Program Files\Microsoft SQL Server\140\DTS\Binn\dtexec.exe" /ISSERVER "\SSISDB\DataMartSSIS_Prod\DataMartSSIS\MatterAderant.dtsx" /SERVER CINVSQL01 /Par "$ServerOption::SYNCHRONIZED(Boolean)";True'
exec master..xp_cmdshell @cmd

--recreate index on staging table
create index finance_matter_stage_idx1 on hs_stage.matter_stage(matter_id)

--verify there are records in the stage table
select @count = count(*) from hs_stage.matter_stage
if @count = 0
begin

return --could replace this with alert logic such as an email to a group or to raise an error to fail the job

end

insert into hs.matter(matter_key,matter_id,matter_name,client_key,client_id,billing_person_key,billing_person_code,datamart_update_date)
select a.matter_key,a.matter_id,a.matter_name,a.client_key,a.client_id,a.billing_person_key,a.billing_person_code,@date
from hs_stage.matter_stage a
where not exists(
select *
from hs.matter b
where a.matter_id = b.matter_id)

update a
set a.matter_key = b.matter_key,    
a.matter_name = b.matter_name,    
a.client_key = b.client_key,    
a.client_id = b.client_id,    
a.billing_person_key = b.billing_person_key,    
a.billing_person_code = b.billing_person_code,
a.datamart_update_date = @date 
from hs.matter a
join hs_stage.matter_stage b on a.matter_id = b.matter_id
where  (isnull(a.[matter_key], 2147483647) != isnull(b.[matter_key], 2147483647)     
or isnull(a.[matter_name], '') != isnull(b.[matter_name], '')     
or isnull(a.[client_key], 2147483647) != isnull(b.[client_key], 2147483647)     
or isnull(a.[client_id], '') != isnull(b.[client_id], '')     
or isnull(a.[billing_person_key], 2147483647) != isnull(b.[billing_person_key], 2147483647)     
or isnull(a.[billing_person_code], '') != isnull(b.[billing_person_code], ''))

delete a
from hs.matter a
where not exists(
select *
from hs_stage.matter_stage b
where a.matter_id = b.matter_id
)

GO
