.class Lcom/vkontakte/android/BillingActivity$3$2;
.super Ljava/lang/Object;
.source "BillingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/BillingActivity$3;->success(ILcom/vkontakte/android/data/StickerPack;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/BillingActivity$3;

.field final synthetic val$fatal:Z

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/BillingActivity$3;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/vkontakte/android/BillingActivity$3$2;->this$1:Lcom/vkontakte/android/BillingActivity$3;

    iput-boolean p2, p0, Lcom/vkontakte/android/BillingActivity$3$2;->val$fatal:Z

    iput-object p3, p0, Lcom/vkontakte/android/BillingActivity$3$2;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 185
    :try_start_0
    iget-object v1, p0, Lcom/vkontakte/android/BillingActivity$3$2;->this$1:Lcom/vkontakte/android/BillingActivity$3;

    iget-object v1, v1, Lcom/vkontakte/android/BillingActivity$3;->this$0:Lcom/vkontakte/android/BillingActivity;

    invoke-static {v1}, Lcom/vkontakte/android/BillingActivity;->access$000(Lcom/vkontakte/android/BillingActivity;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v1

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/vkontakte/android/BillingActivity$3$2;->this$1:Lcom/vkontakte/android/BillingActivity$3;

    iget-object v3, v3, Lcom/vkontakte/android/BillingActivity$3;->this$0:Lcom/vkontakte/android/BillingActivity;

    invoke-virtual {v3}, Lcom/vkontakte/android/BillingActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/vkontakte/android/BillingActivity$3$2;->this$1:Lcom/vkontakte/android/BillingActivity$3;

    iget-object v4, v4, Lcom/vkontakte/android/BillingActivity$3;->val$token:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Lcom/android/vending/billing/IInAppBillingService;->consumePurchase(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :goto_0
    iget-object v1, p0, Lcom/vkontakte/android/BillingActivity$3$2;->this$1:Lcom/vkontakte/android/BillingActivity$3;

    iget-object v1, v1, Lcom/vkontakte/android/BillingActivity$3;->val$prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "owned"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/BillingActivity$3$2;->this$1:Lcom/vkontakte/android/BillingActivity$3;

    iget v3, v3, Lcom/vkontakte/android/BillingActivity$3;->val$id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 188
    iget-boolean v1, p0, Lcom/vkontakte/android/BillingActivity$3$2;->val$fatal:Z

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/vkontakte/android/BillingActivity$3$2;->this$1:Lcom/vkontakte/android/BillingActivity$3;

    iget-object v1, v1, Lcom/vkontakte/android/BillingActivity$3;->val$prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "token"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/BillingActivity$3$2;->this$1:Lcom/vkontakte/android/BillingActivity$3;

    iget v3, v3, Lcom/vkontakte/android/BillingActivity$3;->val$id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "order"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/BillingActivity$3$2;->this$1:Lcom/vkontakte/android/BillingActivity$3;

    iget v3, v3, Lcom/vkontakte/android/BillingActivity$3;->val$id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 191
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/BillingActivity$3$2;->this$1:Lcom/vkontakte/android/BillingActivity$3;

    iget-boolean v1, v1, Lcom/vkontakte/android/BillingActivity$3;->val$finish:Z

    if-eqz v1, :cond_1

    .line 192
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 193
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "fatal"

    iget-boolean v2, p0, Lcom/vkontakte/android/BillingActivity$3$2;->val$fatal:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 194
    const-string v1, "message"

    iget-object v2, p0, Lcom/vkontakte/android/BillingActivity$3$2;->val$message:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    iget-object v1, p0, Lcom/vkontakte/android/BillingActivity$3$2;->this$1:Lcom/vkontakte/android/BillingActivity$3;

    iget-object v1, v1, Lcom/vkontakte/android/BillingActivity$3;->this$0:Lcom/vkontakte/android/BillingActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/vkontakte/android/BillingActivity;->setResult(ILandroid/content/Intent;)V

    .line 196
    iget-object v1, p0, Lcom/vkontakte/android/BillingActivity$3$2;->this$1:Lcom/vkontakte/android/BillingActivity$3;

    iget-object v1, v1, Lcom/vkontakte/android/BillingActivity$3;->this$0:Lcom/vkontakte/android/BillingActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/BillingActivity;->finish()V

    .line 198
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/BillingActivity$3$2;->this$1:Lcom/vkontakte/android/BillingActivity$3;

    iget-object v1, v1, Lcom/vkontakte/android/BillingActivity$3;->val$onDone:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/vkontakte/android/BillingActivity$3$2;->this$1:Lcom/vkontakte/android/BillingActivity$3;

    iget-object v1, v1, Lcom/vkontakte/android/BillingActivity$3;->this$0:Lcom/vkontakte/android/BillingActivity;

    iget-object v2, p0, Lcom/vkontakte/android/BillingActivity$3$2;->this$1:Lcom/vkontakte/android/BillingActivity$3;

    iget-object v2, v2, Lcom/vkontakte/android/BillingActivity$3;->val$onDone:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/BillingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 199
    :cond_2
    return-void

    .line 186
    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method
