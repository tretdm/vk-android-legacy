.class Lcom/vkontakte/android/AuthActivity$9;
.super Ljava/lang/Object;
.source "AuthActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AuthActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/AuthActivity;

.field private final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AuthActivity;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/AuthActivity$9;->this$0:Lcom/vkontakte/android/AuthActivity;

    iput-object p2, p0, Lcom/vkontakte/android/AuthActivity$9;->val$intent:Landroid/content/Intent;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 204
    iget-object v0, p0, Lcom/vkontakte/android/AuthActivity$9;->val$intent:Landroid/content/Intent;

    const-string v1, "access_token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/AuthActivity$9;->val$intent:Landroid/content/Intent;

    const-string v2, "secret"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/AuthActivity$9;->val$intent:Landroid/content/Intent;

    const-string v3, "user_id"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/Auth;->setData(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 205
    iget-object v0, p0, Lcom/vkontakte/android/AuthActivity$9;->this$0:Lcom/vkontakte/android/AuthActivity;

    sget v1, Lcom/vkontakte/android/Auth;->REAUTH_SUCCESS:I

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/AuthActivity;->authDone(I)V

    .line 206
    return-void
.end method
