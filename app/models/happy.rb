class Happy < ApplicationRecord
    after_create_commit { MessageBroadcastJob.perform_later self }
end
