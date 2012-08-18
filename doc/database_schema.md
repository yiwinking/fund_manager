### Category
*  name: string
*  ancestry: string

### ExpenseRecord
*  date: date
*  amount: decimal
*  comment: string
*  category_id: integer
*  user_id: integer

### IncomeRecord
*  date: date
*  amount: decimal
*  comment: string
*  category_id: integer
*  user_id: integer

### User
*  nickname: string
*  email: string
*  balance: decimal
*  password_digest: string
*  auth_token: string
*  password_reset_token: string
*  password_reset_sent_at: datetime

### Authentication
*  provider: string
*  uid: string
*  user_id: intger
