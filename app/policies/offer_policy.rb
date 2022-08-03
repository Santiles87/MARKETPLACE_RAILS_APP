class OfferPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end

    # def new?
    #   true
    # end

    def create?
      true
    end

    def show?
      true
    end

    # def edit?
    #  record.user == user
    # end

    def update?
      record.user == user
      # - record: the restaurant passed to the `authorize` method in controller
      # - user:   the `current_user` signed in with Devise.
    end

    def destroy?
      record.user == user
    end
  end
end
