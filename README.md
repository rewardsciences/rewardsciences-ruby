# Getting Started

The Reward Sciences gem lets you integrate with our API to track activities, assign points to customers and and let them redeem rewards without leaving your application.

## Installation

```bash
gem install reward_sciences
```

Or add it to your gemfile

```ruby
gem 'reward_sciences'
```

## Quick Start Example

1. Contact us at support@rewardsciences.com to get a test account on our sandbox environment.

2. Log in to our web app and get your API token from the 'API Tokens' area available under 'Settings'.

3. Define the methods you'll use accross the app

  ```ruby
  module Rewardable
    def identify_reward_sciences_user(user)
      session[:reward_sciences_user_id] = reward_sciences.users.identify(user.email)['id']
    end

    def track_reward_sciences_activity(activity_slug)
      reward_sciences.activities.track(session[:reward_sciences_user_id], activity_slug)
    end

    def list_reward_sciences_rewards
      reward_sciences.rewards.list
    end

    def show_reward_sciences_reward(reward_id)
      reward_sciences.rewards.show(reward_id)
    end

    def redeem_reward_sciences_reward(reward_id)
      reward_sciences.rewards.redeem(session[:reward_sciences_user_id], reward_id)
    rescue RewardSciences::APIException => e
      redirect_to :back, alert: e.message.split(':').last
    end

    private

    def reward_sciences
      RewardSciences::RewardSciencesClient.new(
        Rails.application.secrets.reward_sciences_access_token,
        Rails.application.secrets.reward_sciences_environment
      )
    end
  end
  ```

4. Use the methods defined in the previous step

## Sample Project

Check out our [Sample Ruby on Rails project](https://github.com/rewardsciences/rewardsciences-ruby-sample).

## Help

If you have any questions feel free to email us at support@rewardsciences.com. We are happy to help.

# Class Reference
## <a name="list_of_controllers"></a>List of Controllers

* [Rewards](#rewards)
* [RewardCategories](#reward_categories)
* [Users](#users)
* [Activities](#activities)

## <a name="rewards"></a>![Class: ](http://apidocs.io/img/class.png ".Rewards") Rewards

#### Get singleton instance
The singleton instance of the ``` Rewards ``` class can be accessed from the API Client.
```ruby
rewards = client.rewards
```

### <a name="bid"></a>![Method: ](http://apidocs.io/img/method.png ".Rewards.bid") bid

> Bid on a reward auction.

```ruby
def bid(user_id,
            reward_id,
            amount); end
```

#### Parameters:

| Parameter | Tags | Description |
|-----------|------|-------------|
| user_id |  ``` Required ```  | The ID of the user who is bidding on the reward auction. |
| reward_id |  ``` Required ```  | The ID of the reward auction to be bid on. |
| amount |  ``` Required ```  | Can be either 'max' (when max bidding) or the number of points the user wants to bid. |



#### Example Usage:
```ruby
user_id = 225
reward_id = 225
amount = 'amount'

result = rewards.bid(user_id, reward_id, amount)

```




### <a name="list"></a>![Method: ](http://apidocs.io/img/method.png ".Rewards.list") list

> List all the available rewards.

```ruby
def list(category_id = nil,
             limit = 25,
             offset = 0); end
```

#### Parameters:

| Parameter | Tags | Description |
|-----------|------|-------------|
| category_id |  ``` Optional ```  | The id of the category to filter rewards by |
| limit |  ``` Optional ```  ``` DefaultValue ```  | The number of rewards you want to be retrieved. |
| offset |  ``` Optional ```  ``` DefaultValue ```  | The number of rewards you want to skip before starting the retrieval. |



#### Example Usage:
```ruby
category_id = 225
limit = 25
offset = 0

result = rewards.list(category_id, limit, offset)

```




### <a name="redeem"></a>![Method: ](http://apidocs.io/img/method.png ".Rewards.redeem") redeem

> Redeem a reward.

```ruby
def redeem(user_id,
               reward_id); end
```

#### Parameters:

| Parameter | Tags | Description |
|-----------|------|-------------|
| user_id |  ``` Required ```  | The ID of the user who is redeeming the reward. |
| reward_id |  ``` Required ```  | The ID of the reward to be redeemed. |



#### Example Usage:
```ruby
user_id = 225
reward_id = 225

result = rewards.redeem(user_id, reward_id)

```




### <a name="show"></a>![Method: ](http://apidocs.io/img/method.png ".Rewards.show") show

> Show a reward's details.

```ruby
def show(reward_id); end
```

#### Parameters:

| Parameter | Tags | Description |
|-----------|------|-------------|
| reward_id |  ``` Required ```  | The ID of the reward to be retrieved. |



#### Example Usage:
```ruby
reward_id = 225

result = rewards.show(reward_id)

```




[Back to List of Controllers](#list_of_controllers)
## <a name="reward_categories"></a>![Class: ](http://apidocs.io/img/class.png ".RewardCategories") RewardCategories

#### Get singleton instance
The singleton instance of the ``` RewardCategories ``` class can be accessed from the API Client.
```ruby
rewardCategories = client.reward_categories
```

### <a name="list"></a>![Method: ](http://apidocs.io/img/method.png ".RewardCategories.list") list

> List all the available reward categories.

```ruby
def list(limit = 25,
             offset = 0); end
```

#### Parameters:

| Parameter | Tags | Description |
|-----------|------|-------------|
| limit |  ``` Optional ```  ``` DefaultValue ```  | The number of reward categories you want to be retrieved. |
| offset |  ``` Optional ```  ``` DefaultValue ```  | The number of reward categories you want to skip before starting the retrieval. |



#### Example Usage:
```ruby
limit = 25
offset = 0

result = rewardCategories.list(limit, offset)

```




[Back to List of Controllers](#list_of_controllers)
## <a name="users"></a>![Class: ](http://apidocs.io/img/class.png ".Users") Users

#### Get singleton instance
The singleton instance of the ``` Users ``` class can be accessed from the API Client.
```ruby
users = client.users
```

### <a name="show"></a>![Method: ](http://apidocs.io/img/method.png ".Users.show") show

> This endpoint lets retrieve a user's details.

```ruby
def show(user_id); end
```

#### Parameters:

| Parameter | Tags | Description |
|-----------|------|-------------|
| user_id |  ``` Required ```  | The ID of the user to be retrieved. |



#### Example Usage:
```ruby
user_id = 225

result = users.show(user_id)

```




### <a name="identify"></a>![Method: ](http://apidocs.io/img/method.png ".Users.identify") identify

> This endpoint lets you tie a user with his/her activities. You’ll want to identify a user with any relevant information as soon as they log-in or sign-up.

```ruby
def identify(email,
                 first_name = nil,
                 last_name = nil); end
```

#### Parameters:

| Parameter | Tags | Description |
|-----------|------|-------------|
| email |  ``` Required ```  | The user's email address |
| first_name |  ``` Optional ```  | The user's first name |
| last_name |  ``` Optional ```  | The user's last name |



#### Example Usage:
```ruby
email = 'email'
first_name = 'first_name'
last_name = 'last_name'

result = users.identify(email, first_name, last_name)

```




[Back to List of Controllers](#list_of_controllers)
## <a name="activities"></a>![Class: ](http://apidocs.io/img/class.png ".Activities") Activities

#### Get singleton instance
The singleton instance of the ``` Activities ``` class can be accessed from the API Client.
```ruby
activities = client.activities
```

### <a name="track"></a>![Method: ](http://apidocs.io/img/method.png ".Activities.track") track

> This endpoint lets you track the activities your users perform.

```ruby
def track(user_id,
              activity_type,
              price = nil,
              record_id = nil); end
```

#### Parameters:

| Parameter | Tags | Description |
|-----------|------|-------------|
| user_id |  ``` Required ```  | The ID of the user who is performing the activity. |
| activity_type |  ``` Required ```  | The type of activity the user is performing. Example: 'purchased-a-product' |
| price |  ``` Optional ```  | The price related to the activity, if any. Expressed in USD |
| record_id |  ``` Optional ```  | The ID for the record associated with the activity in your database. |



#### Example Usage:
```ruby
user_id = 225
activity_type = 'activity_type'
price = 225
record_id = 'record_id'

result = activities.track(user_id, activity_type, price, record_id)

```




[Back to List of Controllers](#list_of_controllers)


