
/// When the user is on the login/registration page,
/// then the state is auth when the user has not yet entered valid
/// credentials. When the user has entered valid credentials, then
/// the state is authSuccessful.
enum AuthenticationState {
  auth,
  authSuccessful,
}