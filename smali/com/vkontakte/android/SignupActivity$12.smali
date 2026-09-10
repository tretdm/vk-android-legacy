.class Lcom/vkontakte/android/SignupActivity$12;
.super Ljava/lang/Object;
.source "SignupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/SignupActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/SignupActivity;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/SignupActivity;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lcom/vkontakte/android/SignupActivity$12;->this$0:Lcom/vkontakte/android/SignupActivity;

    iput-object p2, p0, Lcom/vkontakte/android/SignupActivity$12;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 341
    iget-object v0, p0, Lcom/vkontakte/android/SignupActivity$12;->val$intent:Landroid/content/Intent;

    const-string v1, "access_token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/SignupActivity$12;->val$intent:Landroid/content/Intent;

    const-string v2, "secret"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/SignupActivity$12;->val$intent:Landroid/content/Intent;

    const-string v3, "user_id"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/vkontakte/android/Auth;->setData(Ljava/lang/String;Ljava/lang/String;IZ)Z

    .line 342
    iget-object v0, p0, Lcom/vkontakte/android/SignupActivity$12;->this$0:Lcom/vkontakte/android/SignupActivity;

    sget v1, Lcom/vkontakte/android/Auth;->REAUTH_SUCCESS:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/SignupActivity;->authDone(ILjava/util/HashMap;)V

    .line 343
    return-void
.end method
