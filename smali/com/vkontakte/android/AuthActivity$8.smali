.class Lcom/vkontakte/android/AuthActivity$8;
.super Ljava/lang/Object;
.source "AuthActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AuthActivity;->authDone(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/AuthActivity;

.field private final synthetic val$result:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AuthActivity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/AuthActivity$8;->this$0:Lcom/vkontakte/android/AuthActivity;

    iput p2, p0, Lcom/vkontakte/android/AuthActivity$8;->val$result:I

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 165
    iget-object v1, p0, Lcom/vkontakte/android/AuthActivity$8;->this$0:Lcom/vkontakte/android/AuthActivity;

    const v2, 0x7f080081

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/AuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 167
    iget-object v1, p0, Lcom/vkontakte/android/AuthActivity$8;->this$0:Lcom/vkontakte/android/AuthActivity;

    iget-object v1, v1, Lcom/vkontakte/android/AuthActivity;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 168
    iget v1, p0, Lcom/vkontakte/android/AuthActivity$8;->val$result:I

    sget v2, Lcom/vkontakte/android/Auth;->REAUTH_CANCELED:I

    if-eq v1, v2, :cond_0

    .line 169
    iget v1, p0, Lcom/vkontakte/android/AuthActivity$8;->val$result:I

    sget v2, Lcom/vkontakte/android/Auth;->REAUTH_OPEN_BROWSER:I

    if-ne v1, v2, :cond_1

    .line 170
    iget-object v1, p0, Lcom/vkontakte/android/AuthActivity$8;->this$0:Lcom/vkontakte/android/AuthActivity;

    sget-object v2, Lcom/vkontakte/android/Auth;->lastError:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/vkontakte/android/AuthActivity;->access$0(Lcom/vkontakte/android/AuthActivity;Ljava/lang/String;)V

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/AuthActivity$8;->this$0:Lcom/vkontakte/android/AuthActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/AuthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v1, p0, Lcom/vkontakte/android/AuthActivity$8;->val$result:I

    sget v3, Lcom/vkontakte/android/Auth;->REAUTH_ERROR_INCORRECT_PASSWORD:I

    if-ne v1, v3, :cond_3

    const v1, 0x7f06003b

    :goto_1
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "msg":Ljava/lang/String;
    iget v1, p0, Lcom/vkontakte/android/AuthActivity$8;->val$result:I

    sget v2, Lcom/vkontakte/android/Auth;->REAUTH_ERROR_INCORRECT_PASSWORD:I

    if-ne v1, v2, :cond_2

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/AuthActivity$8;->this$0:Lcom/vkontakte/android/AuthActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/AuthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06004e

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

    .line 177
    :cond_2
    new-instance v1, Lcom/vkontakte/android/VKAlertDialog$Builder;

    iget-object v2, p0, Lcom/vkontakte/android/AuthActivity$8;->this$0:Lcom/vkontakte/android/AuthActivity;

    invoke-direct {v1, v2}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 178
    invoke-virtual {v1, v0}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 179
    const v2, 0x7f06003a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 180
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v1, v3, :cond_4

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 181
    const v2, 0x7f060028

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 182
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 173
    .end local v0    # "msg":Ljava/lang/String;
    :cond_3
    const v1, 0x7f0600d7

    goto :goto_1

    .line 180
    .restart local v0    # "msg":Ljava/lang/String;
    :cond_4
    const v1, 0x1080027

    goto :goto_2
.end method
