.class Lcom/vkontakte/android/JoinActivity$10;
.super Ljava/lang/Object;
.source "JoinActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/AuthSignup$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/JoinActivity;->sendSignupForm(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/JoinActivity;

.field private final synthetic val$retry:Z

.field private final synthetic val$voiceConfirm:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/JoinActivity;ZZ)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/JoinActivity$10;->this$0:Lcom/vkontakte/android/JoinActivity;

    iput-boolean p2, p0, Lcom/vkontakte/android/JoinActivity$10;->val$retry:Z

    iput-boolean p3, p0, Lcom/vkontakte/android/JoinActivity$10;->val$voiceConfirm:Z

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 4
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 243
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

    .line 244
    .local v0, "errmsg":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 263
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/vkontakte/android/JoinActivity$10;->this$0:Lcom/vkontakte/android/JoinActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 264
    const v2, 0x7f090053

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 265
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 266
    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 267
    const v2, 0x7f09001d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 268
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 269
    :cond_0
    :goto_1
    :sswitch_0
    return-void

    .line 246
    :sswitch_1
    iget-object v1, p0, Lcom/vkontakte/android/JoinActivity$10;->this$0:Lcom/vkontakte/android/JoinActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/JoinActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090157

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 247
    goto :goto_0

    .line 249
    :sswitch_2
    iget-object v1, p0, Lcom/vkontakte/android/JoinActivity$10;->this$0:Lcom/vkontakte/android/JoinActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/JoinActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090155

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 250
    goto :goto_0

    .line 252
    :sswitch_3
    iget-object v1, p0, Lcom/vkontakte/android/JoinActivity$10;->this$0:Lcom/vkontakte/android/JoinActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/JoinActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090156

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 253
    goto :goto_0

    .line 255
    :sswitch_4
    iget-object v1, p0, Lcom/vkontakte/android/JoinActivity$10;->this$0:Lcom/vkontakte/android/JoinActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/JoinActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090058

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 256
    goto :goto_0

    .line 260
    :sswitch_5
    iget-object v1, p0, Lcom/vkontakte/android/JoinActivity$10;->this$0:Lcom/vkontakte/android/JoinActivity;

    invoke-static {v1}, Lcom/vkontakte/android/JoinActivity;->access$17(Lcom/vkontakte/android/JoinActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/JoinActivity$10;->this$0:Lcom/vkontakte/android/JoinActivity;

    invoke-static {v1}, Lcom/vkontakte/android/JoinActivity;->access$18(Lcom/vkontakte/android/JoinActivity;)V

    goto :goto_1

    .line 244
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_4
        0xe -> :sswitch_0
        0x64 -> :sswitch_1
        0x3eb -> :sswitch_2
        0x3ec -> :sswitch_3
        0x458 -> :sswitch_5
    .end sparse-switch
.end method

.method public success(Ljava/lang/String;)V
    .locals 4
    .param p1, "login"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x2

    .line 225
    iget-object v0, p0, Lcom/vkontakte/android/JoinActivity$10;->this$0:Lcom/vkontakte/android/JoinActivity;

    invoke-static {v0}, Lcom/vkontakte/android/JoinActivity;->access$3(Lcom/vkontakte/android/JoinActivity;)Landroid/widget/ViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    if-eq v0, v3, :cond_2

    .line 226
    iget-object v0, p0, Lcom/vkontakte/android/JoinActivity$10;->this$0:Lcom/vkontakte/android/JoinActivity;

    invoke-static {v0}, Lcom/vkontakte/android/JoinActivity;->access$3(Lcom/vkontakte/android/JoinActivity;)Landroid/widget/ViewFlipper;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/JoinActivity$10;->this$0:Lcom/vkontakte/android/JoinActivity;

    const v2, 0x7f040008

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/content/Context;I)V

    .line 227
    iget-object v0, p0, Lcom/vkontakte/android/JoinActivity$10;->this$0:Lcom/vkontakte/android/JoinActivity;

    invoke-static {v0}, Lcom/vkontakte/android/JoinActivity;->access$3(Lcom/vkontakte/android/JoinActivity;)Landroid/widget/ViewFlipper;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/JoinActivity$10;->this$0:Lcom/vkontakte/android/JoinActivity;

    const v2, 0x7f04000a

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/content/Context;I)V

    .line 228
    iget-object v0, p0, Lcom/vkontakte/android/JoinActivity$10;->this$0:Lcom/vkontakte/android/JoinActivity;

    invoke-static {v0}, Lcom/vkontakte/android/JoinActivity;->access$3(Lcom/vkontakte/android/JoinActivity;)Landroid/widget/ViewFlipper;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 233
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/JoinActivity$10;->this$0:Lcom/vkontakte/android/JoinActivity;

    invoke-static {v0, p1}, Lcom/vkontakte/android/JoinActivity;->access$13(Lcom/vkontakte/android/JoinActivity;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/vkontakte/android/JoinActivity$10;->this$0:Lcom/vkontakte/android/JoinActivity;

    invoke-static {v0}, Lcom/vkontakte/android/JoinActivity;->access$14(Lcom/vkontakte/android/JoinActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 235
    iget-object v0, p0, Lcom/vkontakte/android/JoinActivity$10;->this$0:Lcom/vkontakte/android/JoinActivity;

    invoke-static {v0}, Lcom/vkontakte/android/JoinActivity;->access$15(Lcom/vkontakte/android/JoinActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/vkontakte/android/JoinActivity$10;->this$0:Lcom/vkontakte/android/JoinActivity;

    invoke-static {v0}, Lcom/vkontakte/android/JoinActivity;->access$15(Lcom/vkontakte/android/JoinActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 237
    iget-object v0, p0, Lcom/vkontakte/android/JoinActivity$10;->this$0:Lcom/vkontakte/android/JoinActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/JoinActivity;->access$16(Lcom/vkontakte/android/JoinActivity;Landroid/app/ProgressDialog;)V

    .line 239
    :cond_1
    return-void

    .line 230
    :cond_2
    iget-boolean v0, p0, Lcom/vkontakte/android/JoinActivity$10;->val$retry:Z

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/JoinActivity$10;->this$0:Lcom/vkontakte/android/JoinActivity;

    iget-boolean v0, p0, Lcom/vkontakte/android/JoinActivity$10;->val$voiceConfirm:Z

    if-eqz v0, :cond_3

    const v0, 0x7f090163

    :goto_1
    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    const v0, 0x7f090162

    goto :goto_1
.end method
