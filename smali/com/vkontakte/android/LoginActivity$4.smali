.class Lcom/vkontakte/android/LoginActivity$4;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/LoginActivity;->authDone(ILjava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/LoginActivity;

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/LoginActivity;I)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/vkontakte/android/LoginActivity$4;->this$0:Lcom/vkontakte/android/LoginActivity;

    iput p2, p0, Lcom/vkontakte/android/LoginActivity$4;->val$result:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 77
    iget-object v1, p0, Lcom/vkontakte/android/LoginActivity$4;->this$0:Lcom/vkontakte/android/LoginActivity;

    const v2, 0x7f0800c8

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 79
    iget-object v1, p0, Lcom/vkontakte/android/LoginActivity$4;->this$0:Lcom/vkontakte/android/LoginActivity;

    invoke-static {v1}, Lcom/vkontakte/android/LoginActivity;->access$100(Lcom/vkontakte/android/LoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 80
    iget v1, p0, Lcom/vkontakte/android/LoginActivity$4;->val$result:I

    sget v2, Lcom/vkontakte/android/Auth;->REAUTH_CANCELED:I

    if-eq v1, v2, :cond_0

    .line 81
    iget v1, p0, Lcom/vkontakte/android/LoginActivity$4;->val$result:I

    sget v2, Lcom/vkontakte/android/Auth;->REAUTH_OPEN_BROWSER:I

    if-ne v1, v2, :cond_1

    .line 82
    iget-object v1, p0, Lcom/vkontakte/android/LoginActivity$4;->this$0:Lcom/vkontakte/android/LoginActivity;

    sget-object v2, Lcom/vkontakte/android/Auth;->lastError:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/vkontakte/android/LoginActivity;->access$200(Lcom/vkontakte/android/LoginActivity;Ljava/lang/String;)V

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    iget v1, p0, Lcom/vkontakte/android/LoginActivity$4;->val$result:I

    sget v2, Lcom/vkontakte/android/Auth;->REAUTH_NEED_CHECK:I

    if-ne v1, v2, :cond_2

    .line 86
    iget-object v1, p0, Lcom/vkontakte/android/LoginActivity$4;->this$0:Lcom/vkontakte/android/LoginActivity;

    invoke-static {v1}, Lcom/vkontakte/android/LoginActivity;->access$300(Lcom/vkontakte/android/LoginActivity;)V

    goto :goto_0

    .line 89
    :cond_2
    iget-object v1, p0, Lcom/vkontakte/android/LoginActivity$4;->this$0:Lcom/vkontakte/android/LoginActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v1, p0, Lcom/vkontakte/android/LoginActivity$4;->val$result:I

    sget v3, Lcom/vkontakte/android/Auth;->REAUTH_ERROR_INCORRECT_PASSWORD:I

    if-ne v1, v3, :cond_4

    const v1, 0x7f0d0044

    :goto_1
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "msg":Ljava/lang/String;
    iget v1, p0, Lcom/vkontakte/android/LoginActivity$4;->val$result:I

    sget v2, Lcom/vkontakte/android/Auth;->REAUTH_ERROR_INCORRECT_PASSWORD:I

    if-ne v1, v2, :cond_3

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/LoginActivity$4;->this$0:Lcom/vkontakte/android/LoginActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/LoginActivity;->getResources()Landroid/content/res/Resources;

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

    .line 93
    :cond_3
    new-instance v1, Lcom/vkontakte/android/VKAlertDialog$Builder;

    iget-object v2, p0, Lcom/vkontakte/android/LoginActivity$4;->this$0:Lcom/vkontakte/android/LoginActivity;

    invoke-direct {v1, v2}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0046

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d01cd

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 89
    .end local v0    # "msg":Ljava/lang/String;
    :cond_4
    const v1, 0x7f0d0045

    goto :goto_1
.end method
