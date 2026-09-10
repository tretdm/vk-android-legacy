.class Lcom/vkontakte/android/BillingActivity$3$3;
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

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$pack:Lcom/vkontakte/android/data/StickerPack;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/BillingActivity$3;Lcom/vkontakte/android/data/StickerPack;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/vkontakte/android/BillingActivity$3$3;->this$1:Lcom/vkontakte/android/BillingActivity$3;

    iput-object p2, p0, Lcom/vkontakte/android/BillingActivity$3$3;->val$pack:Lcom/vkontakte/android/data/StickerPack;

    iput-object p3, p0, Lcom/vkontakte/android/BillingActivity$3$3;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 207
    :try_start_0
    iget-object v4, p0, Lcom/vkontakte/android/BillingActivity$3$3;->this$1:Lcom/vkontakte/android/BillingActivity$3;

    iget-object v4, v4, Lcom/vkontakte/android/BillingActivity$3;->this$0:Lcom/vkontakte/android/BillingActivity;

    invoke-static {v4}, Lcom/vkontakte/android/BillingActivity;->access$000(Lcom/vkontakte/android/BillingActivity;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v4

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/vkontakte/android/BillingActivity$3$3;->this$1:Lcom/vkontakte/android/BillingActivity$3;

    iget-object v6, v6, Lcom/vkontakte/android/BillingActivity$3;->this$0:Lcom/vkontakte/android/BillingActivity;

    invoke-virtual {v6}, Lcom/vkontakte/android/BillingActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/vkontakte/android/BillingActivity$3$3;->this$1:Lcom/vkontakte/android/BillingActivity$3;

    iget-object v7, v7, Lcom/vkontakte/android/BillingActivity$3;->val$token:Ljava/lang/String;

    invoke-interface {v4, v5, v6, v7}, Lcom/android/vending/billing/IInAppBillingService;->consumePurchase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 208
    .local v2, "result":I
    if-nez v2, :cond_2

    .line 209
    iget-object v4, p0, Lcom/vkontakte/android/BillingActivity$3$3;->this$1:Lcom/vkontakte/android/BillingActivity$3;

    iget-object v4, v4, Lcom/vkontakte/android/BillingActivity$3;->val$prefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "token"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/vkontakte/android/BillingActivity$3$3;->this$1:Lcom/vkontakte/android/BillingActivity$3;

    iget v6, v6, Lcom/vkontakte/android/BillingActivity$3;->val$id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "order"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/vkontakte/android/BillingActivity$3$3;->this$1:Lcom/vkontakte/android/BillingActivity$3;

    iget v6, v6, Lcom/vkontakte/android/BillingActivity$3;->val$id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/vkontakte/android/BillingActivity$3$3;->this$1:Lcom/vkontakte/android/BillingActivity$3;

    iget v6, v6, Lcom/vkontakte/android/BillingActivity$3;->val$id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/vkontakte/android/BillingActivity$3$3;->val$pack:Lcom/vkontakte/android/data/StickerPack;

    iget-object v7, v7, Lcom/vkontakte/android/data/StickerPack;->baseURL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "content.zip"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ordering"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/vkontakte/android/BillingActivity$3$3;->this$1:Lcom/vkontakte/android/BillingActivity$3;

    iget v6, v6, Lcom/vkontakte/android/BillingActivity$3;->val$id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    iget-object v7, p0, Lcom/vkontakte/android/BillingActivity$3$3;->val$pack:Lcom/vkontakte/android/data/StickerPack;

    iget-object v7, v7, Lcom/vkontakte/android/data/StickerPack;->ids:Ljava/util/List;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 211
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .local v1, "order":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/vkontakte/android/BillingActivity$3$3;->this$1:Lcom/vkontakte/android/BillingActivity$3;

    iget-object v4, v4, Lcom/vkontakte/android/BillingActivity$3;->val$prefs:Landroid/content/SharedPreferences;

    const-string v5, "order"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/Global;->stringToIntArray(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 213
    iget-object v4, p0, Lcom/vkontakte/android/BillingActivity$3$3;->this$1:Lcom/vkontakte/android/BillingActivity$3;

    iget v4, v4, Lcom/vkontakte/android/BillingActivity$3;->val$id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object v4, p0, Lcom/vkontakte/android/BillingActivity$3$3;->this$1:Lcom/vkontakte/android/BillingActivity$3;

    iget-object v4, v4, Lcom/vkontakte/android/BillingActivity$3;->val$prefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "order"

    const-string v6, ","

    invoke-static {v6, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 215
    iget-object v4, p0, Lcom/vkontakte/android/BillingActivity$3$3;->this$1:Lcom/vkontakte/android/BillingActivity$3;

    iget-boolean v4, v4, Lcom/vkontakte/android/BillingActivity$3;->val$finish:Z

    if-eqz v4, :cond_0

    .line 216
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 217
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "product"

    iget-object v5, p0, Lcom/vkontakte/android/BillingActivity$3$3;->this$1:Lcom/vkontakte/android/BillingActivity$3;

    iget v5, v5, Lcom/vkontakte/android/BillingActivity$3;->val$id:I

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 218
    const-string v4, "message"

    iget-object v5, p0, Lcom/vkontakte/android/BillingActivity$3$3;->val$message:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    iget-object v4, p0, Lcom/vkontakte/android/BillingActivity$3$3;->this$1:Lcom/vkontakte/android/BillingActivity$3;

    iget-object v4, v4, Lcom/vkontakte/android/BillingActivity$3;->this$0:Lcom/vkontakte/android/BillingActivity;

    const/4 v5, -0x1

    invoke-virtual {v4, v5, v0}, Lcom/vkontakte/android/BillingActivity;->setResult(ILandroid/content/Intent;)V

    .line 220
    iget-object v4, p0, Lcom/vkontakte/android/BillingActivity$3$3;->this$1:Lcom/vkontakte/android/BillingActivity$3;

    iget-object v4, v4, Lcom/vkontakte/android/BillingActivity$3;->this$0:Lcom/vkontakte/android/BillingActivity;

    invoke-virtual {v4}, Lcom/vkontakte/android/BillingActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "order":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "result":I
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/vkontakte/android/BillingActivity$3$3;->this$1:Lcom/vkontakte/android/BillingActivity$3;

    iget-object v4, v4, Lcom/vkontakte/android/BillingActivity$3;->val$onDone:Ljava/lang/Runnable;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/vkontakte/android/BillingActivity$3$3;->this$1:Lcom/vkontakte/android/BillingActivity$3;

    iget-object v4, v4, Lcom/vkontakte/android/BillingActivity$3;->val$onDone:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 248
    :cond_1
    return-void

    .line 224
    .restart local v2    # "result":I
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/vkontakte/android/BillingActivity$3$3;->this$1:Lcom/vkontakte/android/BillingActivity$3;

    iget-object v4, v4, Lcom/vkontakte/android/BillingActivity$3;->val$prefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "incomplete"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/vkontakte/android/BillingActivity$3$3;->this$1:Lcom/vkontakte/android/BillingActivity$3;

    iget v6, v6, Lcom/vkontakte/android/BillingActivity$3;->val$id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 225
    iget-object v4, p0, Lcom/vkontakte/android/BillingActivity$3$3;->this$1:Lcom/vkontakte/android/BillingActivity$3;

    iget-boolean v4, v4, Lcom/vkontakte/android/BillingActivity$3;->val$finish:Z

    if-eqz v4, :cond_0

    .line 226
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 227
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v4, "product"

    iget-object v5, p0, Lcom/vkontakte/android/BillingActivity$3$3;->this$1:Lcom/vkontakte/android/BillingActivity$3;

    iget v5, v5, Lcom/vkontakte/android/BillingActivity$3;->val$id:I

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 228
    const-string v4, "incomplete"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 229
    const-string v4, "message"

    iget-object v5, p0, Lcom/vkontakte/android/BillingActivity$3$3;->val$message:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    iget-object v4, p0, Lcom/vkontakte/android/BillingActivity$3$3;->this$1:Lcom/vkontakte/android/BillingActivity$3;

    iget-object v4, v4, Lcom/vkontakte/android/BillingActivity$3;->this$0:Lcom/vkontakte/android/BillingActivity;

    const/4 v5, -0x1

    invoke-virtual {v4, v5, v0}, Lcom/vkontakte/android/BillingActivity;->setResult(ILandroid/content/Intent;)V

    .line 231
    iget-object v4, p0, Lcom/vkontakte/android/BillingActivity$3$3;->this$1:Lcom/vkontakte/android/BillingActivity$3;

    iget-object v4, v4, Lcom/vkontakte/android/BillingActivity$3;->this$0:Lcom/vkontakte/android/BillingActivity;

    invoke-virtual {v4}, Lcom/vkontakte/android/BillingActivity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 234
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "result":I
    :catch_0
    move-exception v3

    .line 235
    .local v3, "x":Ljava/lang/Exception;
    const-string v4, "vk"

    invoke-static {v4, v3}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 237
    iget-object v4, p0, Lcom/vkontakte/android/BillingActivity$3$3;->this$1:Lcom/vkontakte/android/BillingActivity$3;

    iget-object v4, v4, Lcom/vkontakte/android/BillingActivity$3;->val$prefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "incomplete"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/vkontakte/android/BillingActivity$3$3;->this$1:Lcom/vkontakte/android/BillingActivity$3;

    iget v6, v6, Lcom/vkontakte/android/BillingActivity$3;->val$id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 238
    iget-object v4, p0, Lcom/vkontakte/android/BillingActivity$3$3;->this$1:Lcom/vkontakte/android/BillingActivity$3;

    iget-boolean v4, v4, Lcom/vkontakte/android/BillingActivity$3;->val$finish:Z

    if-eqz v4, :cond_0

    .line 239
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 240
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v4, "product"

    iget-object v5, p0, Lcom/vkontakte/android/BillingActivity$3$3;->this$1:Lcom/vkontakte/android/BillingActivity$3;

    iget v5, v5, Lcom/vkontakte/android/BillingActivity$3;->val$id:I

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 241
    const-string v4, "incomplete"

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 242
    const-string v4, "message"

    iget-object v5, p0, Lcom/vkontakte/android/BillingActivity$3$3;->val$message:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    iget-object v4, p0, Lcom/vkontakte/android/BillingActivity$3$3;->this$1:Lcom/vkontakte/android/BillingActivity$3;

    iget-object v4, v4, Lcom/vkontakte/android/BillingActivity$3;->this$0:Lcom/vkontakte/android/BillingActivity;

    invoke-virtual {v4, v9, v0}, Lcom/vkontakte/android/BillingActivity;->setResult(ILandroid/content/Intent;)V

    .line 244
    iget-object v4, p0, Lcom/vkontakte/android/BillingActivity$3$3;->this$1:Lcom/vkontakte/android/BillingActivity$3;

    iget-object v4, v4, Lcom/vkontakte/android/BillingActivity$3;->this$0:Lcom/vkontakte/android/BillingActivity;

    invoke-virtual {v4}, Lcom/vkontakte/android/BillingActivity;->finish()V

    goto/16 :goto_0
.end method
