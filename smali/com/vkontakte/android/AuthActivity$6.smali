.class Lcom/vkontakte/android/AuthActivity$6;
.super Ljava/lang/Object;
.source "AuthActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AuthActivity;->authDone(ILjava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/AuthActivity;

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AuthActivity;I)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/vkontakte/android/AuthActivity$6;->this$0:Lcom/vkontakte/android/AuthActivity;

    iput p2, p0, Lcom/vkontakte/android/AuthActivity$6;->val$result:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 159
    iget-object v1, p0, Lcom/vkontakte/android/AuthActivity$6;->this$0:Lcom/vkontakte/android/AuthActivity;

    iget-object v1, v1, Lcom/vkontakte/android/AuthActivity;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 160
    iget v1, p0, Lcom/vkontakte/android/AuthActivity$6;->val$result:I

    sget v2, Lcom/vkontakte/android/Auth;->REAUTH_CANCELED:I

    if-eq v1, v2, :cond_2

    .line 161
    iget v1, p0, Lcom/vkontakte/android/AuthActivity$6;->val$result:I

    sget v2, Lcom/vkontakte/android/Auth;->REAUTH_OPEN_BROWSER:I

    if-ne v1, v2, :cond_0

    .line 162
    iget-object v1, p0, Lcom/vkontakte/android/AuthActivity$6;->this$0:Lcom/vkontakte/android/AuthActivity;

    sget-object v2, Lcom/vkontakte/android/Auth;->lastError:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/vkontakte/android/AuthActivity;->access$100(Lcom/vkontakte/android/AuthActivity;Ljava/lang/String;)V

    .line 176
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/AuthActivity$6;->this$0:Lcom/vkontakte/android/AuthActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/AuthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v1, p0, Lcom/vkontakte/android/AuthActivity$6;->val$result:I

    sget v3, Lcom/vkontakte/android/Auth;->REAUTH_ERROR_INCORRECT_PASSWORD:I

    if-ne v1, v3, :cond_3

    const v1, 0x7f0d0044

    :goto_1
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "msg":Ljava/lang/String;
    iget v1, p0, Lcom/vkontakte/android/AuthActivity$6;->val$result:I

    sget v2, Lcom/vkontakte/android/Auth;->REAUTH_ERROR_INCORRECT_PASSWORD:I

    if-ne v1, v2, :cond_1

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/AuthActivity$6;->this$0:Lcom/vkontakte/android/AuthActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/AuthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00d0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/vkontakte/android/Auth;->lastError:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    :cond_1
    new-instance v1, Lcom/vkontakte/android/VKAlertDialog$Builder;

    iget-object v2, p0, Lcom/vkontakte/android/AuthActivity$6;->this$0:Lcom/vkontakte/android/AuthActivity;

    invoke-direct {v1, v2}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0046

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d01cd

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 175
    .end local v0    # "msg":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/vkontakte/android/AuthActivity$6;->this$0:Lcom/vkontakte/android/AuthActivity;

    invoke-static {v1, v4}, Lcom/vkontakte/android/AuthActivity;->access$002(Lcom/vkontakte/android/AuthActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 165
    :cond_3
    const v1, 0x7f0d0045

    goto :goto_1
.end method
