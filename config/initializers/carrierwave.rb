CarrierWave.configure do |config|
    config.fog_credentials = {
        provider:                         'Google',
        google_storage_access_key_id:     'GOOG4VHVGU32QTOLKN7IIJRI',
        google_storage_secret_access_key: 'trEcKPBd7zI7usazoKNoX3FlOOuvblK/jysVy8s9'    
    }
    config.fog_directory = 'bucket-libro-rails1'
end