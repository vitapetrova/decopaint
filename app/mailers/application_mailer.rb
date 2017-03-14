class ApplicationMailer < ActionMailer::Base
  default from: '"MagMaster" <admin@magmaster.by>', content_transfer_encoding: 'quoted-printable'
  layout 'mailer'
end
