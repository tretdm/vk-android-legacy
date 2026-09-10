.class Lcom/vkontakte/android/JoinActivity$13;
.super Ljava/lang/Object;
.source "JoinActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/AuthConfirm$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/JoinActivity;->confirmSMS()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/JoinActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/JoinActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/JoinActivity$13;->this$0:Lcom/vkontakte/android/JoinActivity;

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 4
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, "errmsg":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 325
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/vkontakte/android/JoinActivity$13;->this$0:Lcom/vkontakte/android/JoinActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 326
    const v2, 0x7f090052

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 327
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 328
    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 329
    const v2, 0x7f09001d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 330
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 331
    return-void

    .line 315
    :sswitch_0
    iget-object v1, p0, Lcom/vkontakte/android/JoinActivity$13;->this$0:Lcom/vkontakte/android/JoinActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/JoinActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090158

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 316
    goto :goto_0

    .line 318
    :sswitch_1
    iget-object v1, p0, Lcom/vkontakte/android/JoinActivity$13;->this$0:Lcom/vkontakte/android/JoinActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/JoinActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090157

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 319
    goto :goto_0

    .line 322
    :sswitch_2
    iget-object v1, p0, Lcom/vkontakte/android/JoinActivity$13;->this$0:Lcom/vkontakte/android/JoinActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/JoinActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090057

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 313
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_2
        0xa -> :sswitch_2
        0x456 -> :sswitch_1
        0x457 -> :sswitch_0
    .end sparse-switch
.end method

.method public success(I)V
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 302
    iget-object v1, p0, Lcom/vkontakte/android/JoinActivity$13;->this$0:Lcom/vkontakte/android/JoinActivity;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/JoinActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "new_user"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 303
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 304
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "login"

    iget-object v2, p0, Lcom/vkontakte/android/JoinActivity$13;->this$0:Lcom/vkontakte/android/JoinActivity;

    invoke-static {v2}, Lcom/vkontakte/android/JoinActivity;->access$21(Lcom/vkontakte/android/JoinActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    const-string v1, "password"

    iget-object v2, p0, Lcom/vkontakte/android/JoinActivity$13;->this$0:Lcom/vkontakte/android/JoinActivity;

    invoke-static {v2}, Lcom/vkontakte/android/JoinActivity;->access$5(Lcom/vkontakte/android/JoinActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    iget-object v1, p0, Lcom/vkontakte/android/JoinActivity$13;->this$0:Lcom/vkontakte/android/JoinActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/vkontakte/android/JoinActivity;->setResult(ILandroid/content/Intent;)V

    .line 307
    iget-object v1, p0, Lcom/vkontakte/android/JoinActivity$13;->this$0:Lcom/vkontakte/android/JoinActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/JoinActivity;->finish()V

    .line 308
    return-void
.end method
