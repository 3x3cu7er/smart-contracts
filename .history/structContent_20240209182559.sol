contract varr{

    struct UserCredentials{
        uint128 userId;
    string userName;
    string password;
    string email;
    bool setOTP;
    bool upload;
    }
    
function accountGen() public{
    UserCredentials memory newUser = UserCredentials({
        userId:1122343454343,
    });
}

}


