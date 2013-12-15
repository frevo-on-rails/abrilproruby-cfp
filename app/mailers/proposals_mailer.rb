class ProposalsMailer < ActionMailer::Base
  default from: 'abrilproruby@frevoonrails.com.br'

  def confirmation_email(proposal)
    recipient = email_with_name(proposal.name, proposal.email)
    @proposal = proposal
    mail to: recipient,
      bcc: 'abrilproruby@frevoonrails.com.br',
      subject: '[AP.Rb 2014] Proposal Received'
  end

private

  def email_with_name(name, email)
    "#{name} <#{email}>"
  end
end
