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

.field private final synthetic val$count:[I

.field private final synthetic val$finish:Z

.field private final synthetic val$id:I

.field private final synthetic val$onDone:Ljava/lang/Runnable;

.field private final synthetic val$orderId:Ljava/lang/String;

.field private final synthetic val$prefs:Landroid/content/SharedPreferences;

.field private final synthetic val$productId:Ljava/lang/String;

.field private final synthetic val$progress:Landroid/app/ProgressDialog;

.field private final synthetic val$token:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/BillingActivity;[IZILjava/lang/Runnable;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/BillingActivity$3;->this$0:Lcom/vkontakte/android/BillingActivity;

    iput-object p2, p0, Lcom/vkontakte/android/BillingActivity$3;->val$count:[I

    iput-boolean p3, p0, Lcom/vkontakte/android/BillingActivity$3;->val$finish:Z

    iput p4, p0, Lcom/vkontakte/android/BillingActivity$3;->val$id:I

    iput-object p5, p0, Lcom/vkontakte/android/BillingActivity$3;->val$onDone:Ljava/lang/Runnable;

    iput-object p6, p0, Lcom/vkontakte/android/BillingActivity$3;->val$prefs:Landroid/content/SharedPreferences;

    iput-object p7, p0, Lcom/vkontakte/android/BillingActivity$3;->val$orderId:Ljava/lang/String;

    iput-object p8, p0, Lcom/vkontakte/android/BillingActivity$3;->val$productId:Ljava/lang/String;

    iput-object p9, p0, Lcom/vkontakte/android/BillingActivity$3;->val$token:Ljava/lang/String;

    iput-object p10, p0, Lcom/vkontakte/android/BillingActivity$3;->val$progress:Landroid/app/ProgressDialog;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/BillingActivity$3;)Lcom/vkontakte/android/BillingActivity;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/vkontakte/android/BillingActivity$3;->this$0:Lcom/vkontakte/android/BillingActivity;

    return-object v0
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

    const v1, 0x7f08006b

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

    const-string v3, "incomplete"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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
    const v1, 0x7f080068

    goto :goto_0
.end method

.method public success(ILcom/vkontakte/android/data/StickerPack;Ljava/lang/String;Z)V
    .locals 11
    .param p1, "state"    # I
    .param p2, "pack"    # Lcom/vkontakte/android/data/StickerPack;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "fatal"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 160
    iget-object v0, p0, Lcom/vkontakte/android/BillingActivity$3;->val$count:[I

    aget v1, v0, v2

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v2

    .line 161
    if-nez p1, :cond_3

    .line 162
    iget-object v0, p0, Lcom/vkontakte/android/BillingActivity$3;->val$count:[I

    aget v0, v0, v2

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_2

    .line 163
    iget-boolean v0, p0, Lcom/vkontakte/android/BillingActivity$3;->val$finish:Z

    if-eqz v0, :cond_0

    .line 164
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 165
    .local v9, "intent":Landroid/content/Intent;
    const-string v0, "product"

    iget v1, p0, Lcom/vkontakte/android/BillingActivity$3;->val$id:I

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 166
    const-string v0, "incomplete"

    invoke-virtual {v9, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 167
    const-string v0, "message"

    invoke-virtual {v9, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    iget-object v0, p0, Lcom/vkontakte/android/BillingActivity$3;->this$0:Lcom/vkontakte/android/BillingActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v9}, Lcom/vkontakte/android/BillingActivity;->setResult(ILandroid/content/Intent;)V

    .line 169
    iget-object v0, p0, Lcom/vkontakte/android/BillingActivity$3;->this$0:Lcom/vkontakte/android/BillingActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/BillingActivity;->finish()V

    .line 171
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/BillingActivity$3;->val$onDone:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/BillingActivity$3;->val$onDone:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 250
    :cond_1
    :goto_0
    return-void

    .line 174
    :cond_2
    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/vkontakte/android/BillingActivity$3$1;

    iget v2, p0, Lcom/vkontakte/android/BillingActivity$3;->val$id:I

    iget-object v3, p0, Lcom/vkontakte/android/BillingActivity$3;->val$orderId:Ljava/lang/String;

    iget-object v4, p0, Lcom/vkontakte/android/BillingActivity$3;->val$productId:Ljava/lang/String;

    iget-object v5, p0, Lcom/vkontakte/android/BillingActivity$3;->val$token:Ljava/lang/String;

    iget-object v6, p0, Lcom/vkontakte/android/BillingActivity$3;->val$progress:Landroid/app/ProgressDialog;

    iget-boolean v7, p0, Lcom/vkontakte/android/BillingActivity$3;->val$finish:Z

    iget-object v8, p0, Lcom/vkontakte/android/BillingActivity$3;->val$onDone:Ljava/lang/Runnable;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/vkontakte/android/BillingActivity$3$1;-><init>(Lcom/vkontakte/android/BillingActivity$3;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/ProgressDialog;ZLjava/lang/Runnable;)V

    .line 178
    const-wide/16 v1, 0x3e8

    .line 174
    invoke-virtual {v10, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 181
    :cond_3
    if-ltz p1, :cond_4

    if-eq p1, v3, :cond_5

    .line 182
    :cond_4
    new-instance v0, Lcom/vkontakte/android/BillingActivity$3$2;

    iget-object v2, p0, Lcom/vkontakte/android/BillingActivity$3;->val$token:Ljava/lang/String;

    iget-object v3, p0, Lcom/vkontakte/android/BillingActivity$3;->val$prefs:Landroid/content/SharedPreferences;

    iget v4, p0, Lcom/vkontakte/android/BillingActivity$3;->val$id:I

    iget-boolean v6, p0, Lcom/vkontakte/android/BillingActivity$3;->val$finish:Z

    iget-object v8, p0, Lcom/vkontakte/android/BillingActivity$3;->val$onDone:Ljava/lang/Runnable;

    move-object v1, p0

    move v5, p4

    move-object v7, p3

    invoke-direct/range {v0 .. v8}, Lcom/vkontakte/android/BillingActivity$3$2;-><init>(Lcom/vkontakte/android/BillingActivity$3;Ljava/lang/String;Landroid/content/SharedPreferences;IZZLjava/lang/String;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcom/vkontakte/android/APIController;->runInBg(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 203
    :cond_5
    iget-object v0, p0, Lcom/vkontakte/android/BillingActivity$3;->val$prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "confirmed"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/vkontakte/android/BillingActivity$3;->val$id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 204
    new-instance v0, Lcom/vkontakte/android/BillingActivity$3$3;

    iget-object v2, p0, Lcom/vkontakte/android/BillingActivity$3;->val$token:Ljava/lang/String;

    iget-object v3, p0, Lcom/vkontakte/android/BillingActivity$3;->val$prefs:Landroid/content/SharedPreferences;

    iget v4, p0, Lcom/vkontakte/android/BillingActivity$3;->val$id:I

    iget-boolean v6, p0, Lcom/vkontakte/android/BillingActivity$3;->val$finish:Z

    iget-object v8, p0, Lcom/vkontakte/android/BillingActivity$3;->val$onDone:Ljava/lang/Runnable;

    move-object v1, p0

    move-object v5, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v8}, Lcom/vkontakte/android/BillingActivity$3$3;-><init>(Lcom/vkontakte/android/BillingActivity$3;Ljava/lang/String;Landroid/content/SharedPreferences;ILcom/vkontakte/android/data/StickerPack;ZLjava/lang/String;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcom/vkontakte/android/APIController;->runInBg(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
