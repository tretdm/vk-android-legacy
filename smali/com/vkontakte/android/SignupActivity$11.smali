.class Lcom/vkontakte/android/SignupActivity$11;
.super Ljava/lang/Object;
.source "SignupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/SignupActivity;->authDone(ILjava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/SignupActivity;

.field private final synthetic val$result:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/SignupActivity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/SignupActivity$11;->this$0:Lcom/vkontakte/android/SignupActivity;

    iput p2, p0, Lcom/vkontakte/android/SignupActivity$11;->val$result:I

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 308
    iget-object v1, p0, Lcom/vkontakte/android/SignupActivity$11;->this$0:Lcom/vkontakte/android/SignupActivity;

    invoke-static {v1}, Lcom/vkontakte/android/SignupActivity;->access$22(Lcom/vkontakte/android/SignupActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 309
    iget v1, p0, Lcom/vkontakte/android/SignupActivity$11;->val$result:I

    sget v2, Lcom/vkontakte/android/Auth;->REAUTH_CANCELED:I

    if-eq v1, v2, :cond_0

    .line 310
    iget v1, p0, Lcom/vkontakte/android/SignupActivity$11;->val$result:I

    sget v2, Lcom/vkontakte/android/Auth;->REAUTH_OPEN_BROWSER:I

    if-ne v1, v2, :cond_1

    .line 311
    iget-object v1, p0, Lcom/vkontakte/android/SignupActivity$11;->this$0:Lcom/vkontakte/android/SignupActivity;

    sget-object v2, Lcom/vkontakte/android/Auth;->lastError:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/vkontakte/android/SignupActivity;->access$23(Lcom/vkontakte/android/SignupActivity;Ljava/lang/String;)V

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/SignupActivity$11;->this$0:Lcom/vkontakte/android/SignupActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/SignupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v1, p0, Lcom/vkontakte/android/SignupActivity$11;->val$result:I

    sget v3, Lcom/vkontakte/android/Auth;->REAUTH_ERROR_INCORRECT_PASSWORD:I

    if-ne v1, v3, :cond_3

    const v1, 0x7f080055

    :goto_1
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, "msg":Ljava/lang/String;
    iget v1, p0, Lcom/vkontakte/android/SignupActivity$11;->val$result:I

    sget v2, Lcom/vkontakte/android/Auth;->REAUTH_ERROR_INCORRECT_PASSWORD:I

    if-ne v1, v2, :cond_2

    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/SignupActivity$11;->this$0:Lcom/vkontakte/android/SignupActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/SignupActivity;->getResources()Landroid/content/res/Resources;

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

    .line 318
    :cond_2
    new-instance v1, Lcom/vkontakte/android/VKAlertDialog$Builder;

    iget-object v2, p0, Lcom/vkontakte/android/SignupActivity$11;->this$0:Lcom/vkontakte/android/SignupActivity;

    invoke-direct {v1, v2}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 319
    invoke-virtual {v1, v0}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 320
    const v2, 0x7f080054

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 321
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v1, v3, :cond_4

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 322
    const v2, 0x7f080042

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 323
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 314
    .end local v0    # "msg":Ljava/lang/String;
    :cond_3
    const v1, 0x7f0800f1

    goto :goto_1

    .line 321
    .restart local v0    # "msg":Ljava/lang/String;
    :cond_4
    const v1, 0x1080027

    goto :goto_2
.end method
