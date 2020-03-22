# The User Model
- email
- password
has_many :followers

# Topic Model
- name
  > relationships
  - has_many :questions

# Question
  - name
  - id
  - topic_id 
  > relationships
  * belongs_to :topic
  * has_many :answers

# Answer
  - name
  - question_id:integer(FK)
  - user_id: integer(FK)
  > relationships
  * belongs_to :question
  * belongs_to :user
# Fellows
  - followed_source_id(The person who is creating the following chain)
  - follower_id(small links to the main link) (This is the follower_id which are the chainlinks for the chainorigination)
  > relationships
  - belongs_to :user


- Once created with the models i will check for the associations and the models weather they are properly being named .

- next i will check weather im able to answer the questions .