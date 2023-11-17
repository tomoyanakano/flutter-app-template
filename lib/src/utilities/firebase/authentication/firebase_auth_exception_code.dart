enum FirebaseAuthExceptionCode {
  userNotFound('user-not-found', '指定されたユーザーは登録されていません'),
  userDisabled('user-disabled', '指定されたユーザーは無効化されています'),
  requiresRecentLogin(
    'requires-recent-login',
    'アカウント削除などのセキュアな操作を行うにはログインによる再認証が必要です',
  ),
  emailAlreadyInUse('email-already-in-use', '既に利用されているメールアドレスです'),
  invalidEmail('invalid-email', '不正なメールアドレスです'),
  wrongPassword('wrong-password', 'メールアドレスまたはパスワードが間違っています'),
  tooManyRequests('too-many-requests', 'アクセスが集中しています。少し時間を置いて再度お試し下さい'),
  expiredActionCode(
    'expired-action-code',
    'メールアドレスリンクの期限が切れています。再度認証メールを送信してください',
  ),
  providerAlreadyLinked(
    'provider-already-linked',
    '既に他のメールアドレスが紐づいています',
  );

  const FirebaseAuthExceptionCode(this.code, this.message);
  final String code;
  final String message;
}
