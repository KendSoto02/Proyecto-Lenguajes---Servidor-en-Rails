module ProfilesHelper
  def statusClients
    Client.statusClients.keys.map do |statusClient|
      [t("activerecord.attributes.client.statusClients.#{statusClient}"), statusClient]
    end
  end

  def rolUsers
      Profile.rolUsers.keys.map do |rolUser|
        [t("activerecord.attributes.profile.rolUser.#{rolUser}"), rolUser]
      end
  end
end