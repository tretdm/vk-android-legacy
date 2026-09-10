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

.field private final synthetic val$result:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/LoginActivity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/LoginActivity$4;->this$0:Lcom/vkontakte/android/LoginActivity;

    iput p2, p0, Lcom/vkontakte/android/LoginActivity$4;->val$result:I

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 76
    iget-object v1, p0, Lcom/vkontakte/android/LoginActivity$4;->this$0:Lcom/vkontakte/android/LoginActivity;

    const v2, 0x7f0900e3

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 78
    iget-object v1, p0, Lcom/vkontakte/android/LoginActivity$4;->this$0:Lcom/vkontakte/android/LoginActivity;

    invoke-static {v1}, Lcom/vkontakte/android/LoginActivity;->access$1(Lcom/vkontakte/android/LoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 79
    iget v1, p0, Lcom/vkontakte/android/LoginActivity$4;->val$result:I

    sget v2, Lcom/vkontakte/android/Auth;->REAUTH_CANCELED:I

    if-eq v1, v2, :cond_0

    .line 80
    iget v1, p0, Lcom/vkontakte/android/LoginActivity$4;->val$result:I

    sget v2, Lcom/vkontakte/android/Auth;->REAUTH_OPEN_BROWSER:I

    if-ne v1, v2, :cond_1

    .line 81
    iget-object v1, p0, Lcom/vkontakte/android/LoginActivity$4;->this$0:Lcom/vkontakte/android/LoginActivity;

    sget-object v2, Lcom/vkontakte/android/Auth;->lastError:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/vkontakte/android/LoginActivity;->access$2(Lcom/vkontakte/android/LoginActivity;Ljava/lang/String;)V

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/LoginActivity$4;->this$0:Lcom/vkontakte/android/LoginActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v1, p0, Lcom/vkontakte/android/LoginActivity$4;->val$result:I

    sget v3, Lcom/vkontakte/android/Auth;->REAUTH_ERROR_INCORRECT_PASSWORD:I

    if-ne v1, v3, :cond_3

    const v1, 0x7f080055

    :goto_1
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "msg":Ljava/lang/String;
    iget v1, p0, Lcom/vkontakte/android/LoginActivity$4;->val$result:I

    sget v2, Lcom/vkontakte/android/Auth;->REAUTH_ERROR_INCORRECT_PASSWORD:I

    if-ne v1, v2, :cond_2

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/LoginActivity$4;->this$0:Lcom/vkontakte/android/LoginActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080068

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

    .line 88
    :cond_2
    new-instance v1, Lcom/vkontakte/android/VKAlertDialog$Builder;

    iget-object v2, p0, Lcom/vkontakte/android/LoginActivity$4;->this$0:Lcom/vkontakte/android/LoginActivity;

    invoke-direct {v1, v2}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 89
    invoke-virtual {v1, v0}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 90
    const v2, 0x7f080054

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 91
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v1, v3, :cond_4

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 92
    const v2, 0x7f080042

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 93
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 84
    .end local v0    # "msg":Ljava/lang/String;
    :cond_3
    const v1, 0x7f0800f1

    goto :goto_1

    .line 91
    .restart local v0    # "msg":Ljava/lang/String;
    :cond_4
    const v1, 0x1080027

    goto :goto_2
.end method
