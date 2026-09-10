.class Lcom/vkontakte/android/ProfileEditActivity$19;
.super Ljava/lang/Object;
.source "ProfileEditActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/AccountSaveProfileInfo$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ProfileEditActivity;->save()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ProfileEditActivity;

.field private final synthetic val$newInfo:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ProfileEditActivity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ProfileEditActivity$19;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    iput-object p2, p0, Lcom/vkontakte/android/ProfileEditActivity$19;->val$newInfo:Landroid/os/Bundle;

    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 4
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    const v0, 0x7f080068

    .line 546
    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    .line 547
    new-instance v1, Lcom/vkontakte/android/VKAlertDialog$Builder;

    iget-object v2, p0, Lcom/vkontakte/android/ProfileEditActivity$19;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-direct {v1, v2}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 548
    iget-object v2, p0, Lcom/vkontakte/android/ProfileEditActivity$19;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    const v3, 0x7f08028a

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ProfileEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 549
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 550
    const v1, 0x7f080042

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 551
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 555
    :goto_0
    return-void

    .line 554
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/ProfileEditActivity$19;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    const v0, 0x7f08006b

    :cond_1
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public success(IILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "nameStatus"    # I
    .param p2, "nameRetryIn"    # I
    .param p3, "newFirst"    # Ljava/lang/String;
    .param p4, "newLast"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 520
    if-nez p1, :cond_3

    .line 521
    iget-object v1, p0, Lcom/vkontakte/android/ProfileEditActivity$19;->val$newInfo:Landroid/os/Bundle;

    const-string v2, "first_name"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/ProfileEditActivity$19;->val$newInfo:Landroid/os/Bundle;

    const-string v2, "last_name"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 522
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vkontakte.android.USER_NAME_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 523
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "name"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 524
    iget-object v1, p0, Lcom/vkontakte/android/ProfileEditActivity$19;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    const-string v2, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {v1, v0, v2}, Lcom/vkontakte/android/ProfileEditActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 526
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/ProfileEditActivity$19;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ProfileEditActivity;->setResult(I)V

    .line 527
    iget-object v1, p0, Lcom/vkontakte/android/ProfileEditActivity$19;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/ProfileEditActivity;->finish()V

    .line 542
    :cond_2
    :goto_0
    return-void

    .line 530
    :cond_3
    if-ne p1, v7, :cond_4

    .line 531
    iget-object v1, p0, Lcom/vkontakte/android/ProfileEditActivity$19;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    iget-object v2, p0, Lcom/vkontakte/android/ProfileEditActivity$19;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    const v3, 0x7f080318

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ProfileEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Lcom/vkontakte/android/ProfileEditActivity;->access$33(Lcom/vkontakte/android/ProfileEditActivity;Ljava/lang/String;Z)V

    .line 533
    :cond_4
    const/4 v1, 0x2

    if-ne p1, v1, :cond_5

    .line 534
    iget-object v1, p0, Lcom/vkontakte/android/ProfileEditActivity$19;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    iget-object v2, p0, Lcom/vkontakte/android/ProfileEditActivity$19;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    const v3, 0x7f080317

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ProfileEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Lcom/vkontakte/android/ProfileEditActivity;->access$33(Lcom/vkontakte/android/ProfileEditActivity;Ljava/lang/String;Z)V

    .line 536
    :cond_5
    const/4 v1, 0x3

    if-ne p1, v1, :cond_6

    .line 537
    iget-object v1, p0, Lcom/vkontakte/android/ProfileEditActivity$19;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    iget-object v2, p0, Lcom/vkontakte/android/ProfileEditActivity$19;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    const v3, 0x7f080316

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/vkontakte/android/ProfileEditActivity$19;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-virtual {v5}, Lcom/vkontakte/android/ProfileEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, p2}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/vkontakte/android/ProfileEditActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Lcom/vkontakte/android/ProfileEditActivity;->access$33(Lcom/vkontakte/android/ProfileEditActivity;Ljava/lang/String;Z)V

    .line 539
    :cond_6
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 540
    iget-object v1, p0, Lcom/vkontakte/android/ProfileEditActivity$19;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    iget-object v2, p0, Lcom/vkontakte/android/ProfileEditActivity$19;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    const v3, 0x7f080315

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/vkontakte/android/ProfileEditActivity$19;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-virtual {v5}, Lcom/vkontakte/android/ProfileEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, p2}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/vkontakte/android/ProfileEditActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Lcom/vkontakte/android/ProfileEditActivity;->access$33(Lcom/vkontakte/android/ProfileEditActivity;Ljava/lang/String;Z)V

    goto :goto_0
.end method
