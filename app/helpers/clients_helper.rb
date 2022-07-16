module ClientsHelper
    def statusClients
        Client.statusClients.keys.map do |statusClient|
          [t("activerecord.attributes.client.statusClients.#{statusClient}"), statusClient]
        end
    end
end