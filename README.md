# Getting Started
## How to Build

This client library is a Ruby gem which can be compiled and used in your Ruby and Ruby on Rails project. This library requires a few gems from the RubyGems repository.

1. Open the command line interface or the terminal and navigate to the folder containing the source code.
2. Run ``` gem build reward_sciences.gemspec ``` to build the gem.
3. Once built, the gem can be installed on the current work environment using ``` gem install reward_sciences-1.0.gem ```

![Building Gem](http://apidocs.io/illustration/ruby?step=buildSDK&workspaceFolder=Reward Sciences-Ruby&workspaceName=RewardSciences&projectName=reward_sciences&gemName=reward_sciences&gemVer=1.0)

## How to Use

The following section explains how to use the RewardSciences Ruby Gem in a new Rails project using RubyMine&trade;. The basic workflow presented here is also applicable if you prefer using a different editor or IDE.
    
#### 1. Starting a new project
Close any existing projects in RubyMine&trade; by selecting ``` File -> Close Project ```. Next, click on ``` Create New Project ``` to create a new project from scratch.

![Create a new project in RubyMine](http://apidocs.io/illustration/ruby?step=createNewProject0&workspaceFolder=Reward Sciences-Ruby&workspaceName=RewardSciences&projectName=reward_sciences&gemName=reward_sciences&gemVer=1.0)

Next, provide ``` TestApp ``` as the project name, choose ``` Rails Application ``` as the project type, and click ``` OK ```.

![Create a new Rails Application in RubyMine - step 1](http://apidocs.io/illustration/ruby?step=createNewProject1&workspaceFolder=Reward Sciences-Ruby&workspaceName=RewardSciences&projectName=reward_sciences&gemName=reward_sciences&gemVer=1.0)

In the next dialog make sure that correct *Ruby SDK* is being used (minimum 2.0.0) and click ``` OK ```.

![Create a new Rails Application in RubyMine - step 2](http://apidocs.io/illustration/ruby?step=createNewProject2&workspaceFolder=Reward Sciences-Ruby&workspaceName=RewardSciences&projectName=reward_sciences&gemName=reward_sciences&gemVer=1.0)

This will create a new Rails Application project with an existing set of files and folder.

#### 2. Add reference of the gem
In order to use the RewardSciences gem in the new project we must add a gem reference. Locate the ``` Gemfile	``` in the *Project Explorer* window under the ``` TestApp ``` project node. The file contains references to all gems being used in the project. Here, add the reference to the library gem by adding the following line: ``` gem 'reward_sciences', '~> 1.0' ```

![Add references of the Gemfile](http://apidocs.io/illustration/ruby?step=addReference&workspaceFolder=Reward Sciences-Ruby&workspaceName=RewardSciences&projectName=reward_sciences&gemName=reward_sciences&gemVer=1.0)


#### 3. Adding a new Rails Controller
Once the ``` TestApp ``` project is created, a folder named ``` controllers ``` will be visible in the *Project Explorer* under the following path: ``` TestApp > app > controllers ```. Right click on this folder and select ``` New -> Run Rails Generator... ```.

![Run Rails Generator on Controllers Folder](http://apidocs.io/illustration/ruby?step=addCode0&workspaceFolder=Reward Sciences-Ruby&workspaceName=RewardSciences&projectName=reward_sciences&gemName=reward_sciences&gemVer=1.0)

Selecting the said option will popup a small window where the generator names are displayed. Here, select the ``` controller ``` template.

![Create a new Controller](http://apidocs.io/illustration/ruby?step=addCode1&workspaceFolder=Reward Sciences-Ruby&workspaceName=RewardSciences&projectName=reward_sciences&gemName=reward_sciences&gemVer=1.0)

Next, a popup window will ask you for a Controller name and included Actions. For controller name provide ``` Hello ``` and include an action named ``` Index ``` and click ``` OK ```.

![Add a new Controller](http://apidocs.io/illustration/ruby?step=addCode2&workspaceFolder=Reward Sciences-Ruby&workspaceName=RewardSciences&projectName=reward_sciences&gemName=reward_sciences&gemVer=1.0)

A new controller class anmed ``` HelloController ``` will be created in a file named ``` hello_controller.rb ``` containing a method named ``` Index ```. In this method, add code for initialization and a sample for its usage.

![Initialize the library](http://apidocs.io/illustration/ruby?step=addCode3&workspaceFolder=Reward Sciences-Ruby&workspaceName=RewardSciences&projectName=reward_sciences&gemName=reward_sciences&gemVer=1.0)

## How to Test

You can test the generated SDK and the server with automatically generated test
cases as follows:

  1. From terminal/cmd navigate to the root directory of the SDK.
  2. Invoke: `bundle exec rake`

## Initialization

#### Authentication and Initialization
In order to setup authentication and initialization of the API client, you need the following information.

| Parameter | Description |
|-----------|-------------|
| o_auth_access_token | The OAuth 2.0 access token to be set before API calls |



API client can be initialized as following.

```ruby
# Configuration parameters and credentials
o_auth_access_token = "o_auth_access_token"; # The OAuth 2.0 access token to be set before API calls

client = RewardSciences::RewardSciencesClient.new(o_auth_access_token)
```

The added initlization code can be debugged by putting a breakpoint in the ``` Index ``` method and running the project in debug mode by selecting ``` Run -> Debug 'Development: TestApp' ```.

![Debug the TestApp](http://apidocs.io/illustration/ruby?step=addCode4&workspaceFolder=Reward Sciences-Ruby&workspaceName=RewardSciences&projectName=reward_sciences&gemName=reward_sciences&gemVer=1.0&initLine=client%20%3D%20RewardSciencesClient.new%28%27o_auth_access_token%27%29)

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


