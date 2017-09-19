//Declarations
extern char *yytext;
int yylex(void);

//tokens
#define Indent 1
#define IntConst 2
#define RealConst 3

#define Var 11
#define Int 12
#define Real 13
#define Boolean 14
#define Record 15
#define End 16
#define Bind 17
#define To 18
#define Assert 19
#define Begin 20
#define Loop 21
#define Exit 22
#define When 23
#define If 24
#define Then 25
#define Elsif 26
#define Else 27
#define Put 28
#define Or 29
#define And 30
#define Not 31
#define Ne 32
#define Div 33
#define Mod 34

//Operators
#define SemiColon 35
#define Colon 36
#define Assign 37
#define LessThan 38
#define GreaterThan 39
#define LessThanEq 40
#define GreaterThanEq 41
#define Add 42
#define Subtract 43
#define Multiply 44
#define Divide 45
#define Dot 46
#define LeftParen 47
#define RightParen 48
#define Comma 49
#define Eq 50



