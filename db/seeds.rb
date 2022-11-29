# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

workspace = Workspace.find_or_create_by(name: "BlueUnicorn", domain: "blueunicorn.io", status: :active)
WorkspaceVendor.find_or_create_by(
  workspace: workspace,
  name: "Smartsheet",
  domain: "smartsheet.com",
  website: "https://www.smartsheet.com",
  description: "Smartsheet provides businesses with collaboration software & solutions to create team efficiency, effectiveness and scale.",
)
WorkspaceVendor.find_or_create_by(
  workspace: workspace,
  name: "Stripe",
  domain: "stripe.com",
  website: "https://stripe.com",
  description: "Stripe is a suite of payment APIs that powers commerce for online businesses of all sizes, including fraud prevention, and subscription management.",
)
WorkspaceVendor.find_or_create_by(
  workspace: workspace,
  name: "Google",
  domain: "google.com",
  website: "https://google.com",
  description: "Google is an American multinational technology company that specializes in Internet-related services and products, which include online advertising technologies, search, cloud computing, software, and hardware.",
)
WorkspaceVendor.find_or_create_by(
  workspace: workspace,
  name: "Slack",
  domain: "slack.com",
  website: "https://slack.com",
  description: "Slack is a cloud-based set of proprietary team collaboration tools and services, founded by Stewart Butterfield.",
)
WorkspaceVendor.find_or_create_by(
  workspace: workspace,
  name: "GitHub",
  domain: "github.com",
  website: "https://github.com",
  description: "GitHub is a web-based hosting service for version control using Git. It is mostly used for computer code.",
)
WorkspaceVendor.find_or_create_by(
  workspace: workspace,
  name: "Heroku",
  domain: "heroku.com",
  website: "https://heroku.com",
  description: "Heroku is a platform as a service (PaaS) that enables developers to build, run, and operate applications entirely in the cloud.",
)
WorkspaceVendor.find_or_create_by(
  workspace: workspace,
  name: "Amazon Web Services",
  domain: "aws.amazon.com",
  website: "https://aws.amazon.com",
  description: "Amazon Web Services (AWS) is a subsidiary of Amazon that provides on-demand cloud computing platforms and APIs to individuals, companies, and governments, on a metered pay-as-you-go basis.",
)
people = [
  { name: "Benn Summers", title: "Admin Assistant" },
  { name: "Astrid Mccallum", title: "CEO" },
  { name: "Johnny Bryant", title: "VP of Engineering" },
  { name: "Sharon Rayner", title: "VP of Customer" },
  { name: "Maryam Hodge", title: "Service Team" },
  { name: "Keiren Weston", title: "Operations Manager" },
  { name: "Robin Sandoval", title: "Designer" },
  { name: "Georgie Hubbard", title: "Designer" },
  { name: "Meghan Wagstaff", title: "Brand Manager" },
  { name: "Leigha Burrows", title: "VP of Marketing" },
  { name: "Nyla Edmonds", title: "Marketing Research Coordinator" },
  { name: "Daphne Mccall", title: "VP of Sales" },
  { name: "Elize Decker", title: "Sales Representative" },
  { name: "Gerrard Barry", title: "Sales Representative" },
  { name: "Arham Parks", title: "Sales Representative" },
  { name: "Noah Frazier", title: "Head of Developer Op" },
  { name: "Antoine Abbott", title: "Human Resources" },
  { name: "Elliott Levine", title: "Junior Developer" },
  { name: "Presley Rosales", title: "Junior Developer" },
  { name: "Rome Turner", title: "Junior Developer" },
  { name: "Sanjay Tanner", title: "Senior Developer" },
]

people.each do |person|
  WorkspaceMember.find_or_create_by(
    workspace: workspace,
    first_name: person[:name].split(" ").first,
    last_name: person[:name].split(" ").last,
    email: "#{person[:name].gsub(/\s+/, "").downcase}@#{workspace.domain}",
    title: person[:title],
  )
end

VendorTransaction.find_or_create_by!(
  workspace_vendor: WorkspaceVendor.find_by(name: "Slack"),
  description: "Payment for Slack || APRIL 20, 2022",
  amount_in_cents: rand(1000..10000),
  transaction_date: Time.now - rand(1..20).days.ago,
)
VendorTransaction.find_or_create_by!(
  workspace_vendor: WorkspaceVendor.find_by(name: "Slack"),
  description: "Payment for Slack ||  June 13, 2021",
  amount_in_cents: rand(1000..10000),
  transaction_date: Time.now - rand(1..20).days.ago,
)

VendorTransaction.find_or_create_by!(
  workspace_vendor: WorkspaceVendor.find_by(name: "Smartsheet"),
  description: "Payment for Smartsheet || APRIL 20, 2022",
  amount_in_cents: rand(1000..10000),
  transaction_date: Time.now - rand(1..20).days.ago,
)
VendorTransaction.find_or_create_by!(
  workspace_vendor: WorkspaceVendor.find_by(name: "Smartsheet"),
  description: "Payment for Smartsheet ||  Jan 1, 2021",
  amount_in_cents: rand(1000..10000),
  transaction_date: Time.now - rand(1..20).days.ago,
)

VendorTransaction.find_or_create_by!(
  workspace_vendor: WorkspaceVendor.find_by(name: "Stripe"),
  description: "Payment for Stripe || APRIL 20, 2022",
  amount_in_cents: rand(1000..10000),
  transaction_date: Time.now - rand(1..20).days.ago,
)
VendorTransaction.find_or_create_by!(
  workspace_vendor: WorkspaceVendor.find_by(name: "Stripe"),
  description: "Payment for Stripe ||  Jan 1, 2021",
  amount_in_cents: rand(1000..10000),
  transaction_date: Time.now - rand(1..20).days.ago,
)

VendorTransaction.find_or_create_by!(
  workspace_vendor: WorkspaceVendor.find_by(name: "GitHub"),
  description: "Payment for GitHub || APRIL 20, 2022",
  amount_in_cents: rand(1000..10000),
  transaction_date: Time.now - rand(1..20).days.ago,
)
VendorTransaction.find_or_create_by!(
  workspace_vendor: WorkspaceVendor.find_by(name: "GitHub"),
  description: "Payment for GitHub ||  Jan 1, 2021",
  amount_in_cents: rand(1000..10000),
  transaction_date: Time.now - rand(1..20).days.ago,
)

VendorTransaction.find_or_create_by!(
  workspace_vendor: WorkspaceVendor.find_by(name: "Heroku"),
  description: "Payment for Heroku || APRIL 20, 2022",
  amount_in_cents: rand(1000..10000),
  transaction_date: Time.now - rand(1..20).days.ago,
)
VendorTransaction.find_or_create_by!(
  workspace_vendor: WorkspaceVendor.find_by(name: "Heroku"),
  description: "Payment for Heroku ||  Jan 1, 2021",
  amount_in_cents: rand(1000..10000),
  transaction_date: Time.now - rand(1..20).days.ago,
)

VendorTransaction.find_or_create_by!(
  workspace_vendor: WorkspaceVendor.find_by(name: "Google"),
  description: "Payment for Google || APRIL 20, 2022",
  amount_in_cents: rand(1000..10000),
  transaction_date: Time.now - rand(1..20).days.ago,
)
VendorTransaction.find_or_create_by!(
  workspace_vendor: WorkspaceVendor.find_by(name: "Google"),
  description: "Payment for Google ||  Jan 1, 2021",
  amount_in_cents: rand(1000..10000),
  transaction_date: Time.now - rand(1..20).days.ago,
)

VendorTransaction.find_or_create_by!(
  workspace_vendor: WorkspaceVendor.find_by(name: "Amazon Web Services"),
  description: "Payment for AWS || APRIL 20, 2022",
  amount_in_cents: rand(1000..10000),
  transaction_date: Time.now - rand(1..20).days.ago,
)
VendorTransaction.find_or_create_by!(
  workspace_vendor: WorkspaceVendor.find_by(name: "Amazon Web Services"),
  description: "Payment for AWS ||  Jan 1, 2021",
  amount_in_cents: rand(1000..10000),
  transaction_date: Time.now - rand(1..20).days.ago,
)
