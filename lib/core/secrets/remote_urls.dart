class RemoteUrls {
  static const baseUrl = 'https://ncodenfun.frevva.com';

  //TODO AUTH_ENDPOINTS//

      static const login = '/api/login';
      static const register = '/api/register';
      static const verify = '/api/verify';
      static const resendCode = '/api/resend-code';
      static const forgetPassword = '/api/forgot-password';
      static const forgotPasswordResendCode = '/api/forgot-password-resend-code';
      static const verifyResetCode = '/api/verify-reset-code';
      static const forgotResetPassword = '/api/forgot-reset-password';
      static const loginWithGoogle = '/api/login-with-google';
      static const googleCallback = '/api/google-callback';
      
  //TODO COMPANY_ENDPOINTS//    

      static const companies = '/api/companies';
      static const createCompany = '/api/company';
      static String updateOrDeleteCompany(int companyId) => '/api/company/$companyId';
      static String showCompany(int companyId) => '/api/companies/$companyId/info';
}
