.class Lcom/vkontakte/android/BillingActivity$3;
.super Ljava/lang/Object;
.source "BillingActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/StorePurchase$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/BillingActivity;->pollForResult(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/ProgressDialog;ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/BillingActivity;

.field final synthetic val$count:[I

.field final synthetic val$finish:Z

.field final synthetic val$id:I

.field final synthetic val$onDone:Ljava/lang/Runnable;

.field final synthetic val$orderId:Ljava/lang/String;

.field final synthetic val$prefs:Landroid/content/SharedPreferences;

.field final synthetic val$productId:Ljava/lang/String;

.field final synthetic val$progress:Landroid/app/ProgressDialog;

.field final synthetic val$token:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/BillingActivity;[IZILjava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/ProgressDialog;Landroid/content/SharedPreferences;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/vkontakte/android/BillingActivity$3;->this$0:Lcom/vkontakte/android/BillingActivity;

    iput-object p2, p0, Lcom/vkontakte/android/BillingActivity$3;->val$count:[I

    iput-boolean p3, p0, Lcom/vkontakte/android/BillingActivity$3;->val$finish:Z

    iput p4, p0, Lcom/vkontakte/android/BillingActivity$3;->val$id:I

    iput-object p5, p0, Lcom/vkontakte/android/BillingActivity$3;->val$onDone:Ljava/lang/Runnable;

    iput-object p6, p0, Lcom/vkontakte/android/BillingActivity$3;->val$orderId:Ljava/lang/String;

    iput-object p7, p0, Lcom/vkontakte/android/BillingActivity$3;->val$productId:Ljava/lang/String;

    iput-object p8, p0, Lcom/vkontakte/android/BillingActivity$3;->val$token:Ljava/lang/String;

    iput-object p9, p0, Lcom/vkontakte/android/BillingActivity$3;->val$progress:Landroid/app/ProgressDialog;

    iput-object p10, p0, Lcom/vkontakte/android/BillingActivity$3;->val$prefs:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 6
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 254
    iget-object v2, p0, Lcom/vkontakte/android/BillingActivity$3;->this$0:Lcom/vkontakte/android/BillingActivity;

    if-ne p1, v4, :cond_2

    const v1, 0x7f0d00ce

    :goto_0
    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 255
    iget-object v1, p0, Lcom/vkontakte/android/BillingActivity$3;->val$prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incomplete"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/vkontakte/android/BillingActivity$3;->val$id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 257
    iget-boolean v1, p0, Lcom/vkontakte/android/BillingActivity$3;->val$finish:Z

    if-eqz v1, :cond_0

    .line 258
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 259
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "product"

    iget v2, p0, Lcom/vkontakte/android/BillingActivity$3;->val$id:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 260
    const-string v1, "incomplete"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 261
    iget-object v1, p0, Lcom/vkontakte/android/BillingActivity$3;->this$0:Lcom/vkontakte/android/BillingActivity;

    invoke-virtual {v1, v4, v0}, Lcom/vkontakte/android/BillingActivity;->setResult(ILandroid/content/Intent;)V

    .line 262
    iget-object v1, p0, Lcom/vkontakte/android/BillingActivity$3;->this$0:Lcom/vkontakte/android/BillingActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/BillingActivity;->finish()V

    .line 264
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/BillingActivity$3;->val$onDone:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vkontakte/android/BillingActivity$3;->val$onDone:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 265
    :cond_1
    return-void

    .line 254
    :cond_2
    const v1, 0x7f0d00d0

    goto :goto_0
.end method

.method public success(ILcom/vkontakte/android/data/StickerPack;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "pack"    # Lcom/vkontakte/android/data/StickerPack;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "fatal"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 160
    iget-object v1, p0, Lcom/vkontakte/android/BillingActivity$3;->val$count:[I

    aget v2, v1, v3

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v3

    .line 161
    if-nez p1, :cond_3

    .line 162
    iget-object v1, p0, Lcom/vkontakte/android/BillingActivity$3;->val$count:[I

    aget v1, v1, v3

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_2

    .line 163
    iget-boolean v1, p0, Lcom/vkontakte/android/BillingActivity$3;->val$finish:Z

    if-eqz v1, :cond_0

    .line 164
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 165
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "product"

    iget v2, p0, Lcom/vkontakte/android/BillingActivity$3;->val$id:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 166
    const-string v1, "incomplete"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 167
    const-string v1, "message"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    iget-object v1, p0, Lcom/vkontakte/android/BillingActivity$3;->this$0:Lcom/vkontakte/android/BillingActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/vkontakte/android/BillingActivity;->setResult(ILandroid/content/Intent;)V

    .line 169
    iget-object v1, p0, Lcom/vkontakte/android/BillingActivity$3;->this$0:Lcom/vkontakte/android/BillingActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/BillingActivity;->finish()V

    .line 171
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/BillingActivity$3;->val$onDone:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vkontakte/android/BillingActivity$3;->val$onDone:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 250
    :cond_1
    :goto_0
    return-void

    .line 174
    :cond_2
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/vkontakte/android/BillingActivity$3$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/BillingActivity$3$1;-><init>(Lcom/vkontakte/android/BillingActivity$3;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 181
    :cond_3
    if-ltz p1, :cond_4

    if-eq p1, v4, :cond_5

    .line 182
    :cond_4
    new-instance v1, Lcom/vkontakte/android/BillingActivity$3$2;

    invoke-direct {v1, p0, p4, p3}, Lcom/vkontakte/android/BillingActivity$3$2;-><init>(Lcom/vkontakte/android/BillingActivity$3;ZLjava/lang/String;)V

    invoke-static {v1}, Lcom/vkontakte/android/APIController;->runInBg(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 203
    :cond_5
    iget-object v1, p0, Lcom/vkontakte/android/BillingActivity$3;->val$prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "confirmed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/vkontakte/android/BillingActivity$3;->val$id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 204
    new-instance v1, Lcom/vkontakte/android/BillingActivity$3$3;

    invoke-direct {v1, p0, p2, p3}, Lcom/vkontakte/android/BillingActivity$3$3;-><init>(Lcom/vkontakte/android/BillingActivity$3;Lcom/vkontakte/android/data/StickerPack;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/vkontakte/android/APIController;->runInBg(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
