.class Lcom/vkontakte/android/NewsWidget$2;
.super Ljava/lang/Object;
.source "NewsWidget.java"

# interfaces
.implements Lcom/vkontakte/android/api/NewsfeedGet$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewsWidget;->refresh(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewsWidget;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewsWidget;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewsWidget$2;->this$0:Lcom/vkontakte/android/NewsWidget;

    iput-object p2, p0, Lcom/vkontakte/android/NewsWidget$2;->val$context:Landroid/content/Context;

    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 4
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 406
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/NewsWidget$2;->val$context:Landroid/content/Context;

    const-class v2, Lcom/vkontakte/android/NewsWidget;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 407
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "ShowError"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 408
    iget-object v1, p0, Lcom/vkontakte/android/NewsWidget$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 410
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/vkontakte/android/NewsWidget;->access$1(I)V

    .line 411
    iget-object v1, p0, Lcom/vkontakte/android/NewsWidget$2;->this$0:Lcom/vkontakte/android/NewsWidget;

    iget-object v2, p0, Lcom/vkontakte/android/NewsWidget$2;->val$context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/vkontakte/android/NewsWidget;->access$3(Lcom/vkontakte/android/NewsWidget;Landroid/content/Context;)V

    .line 412
    iget-object v1, p0, Lcom/vkontakte/android/NewsWidget$2;->this$0:Lcom/vkontakte/android/NewsWidget;

    invoke-static {}, Lcom/vkontakte/android/NewsWidget;->access$4()Landroid/widget/RemoteViews;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/NewsWidget$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/NewsWidget;->fillData(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    .line 413
    iget-object v1, p0, Lcom/vkontakte/android/NewsWidget$2;->this$0:Lcom/vkontakte/android/NewsWidget;

    iget-object v2, p0, Lcom/vkontakte/android/NewsWidget$2;->val$context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/vkontakte/android/NewsWidget;->access$0(Lcom/vkontakte/android/NewsWidget;Landroid/content/Context;)V

    .line 414
    return-void
.end method

.method public success([Lcom/vkontakte/android/NewsEntry;Ljava/lang/String;I)V
    .locals 4
    .param p1, "news"    # [Lcom/vkontakte/android/NewsEntry;
    .param p2, "newFrom"    # Ljava/lang/String;
    .param p3, "newOffset"    # I

    .prologue
    const/4 v3, 0x0

    .line 389
    invoke-static {v3}, Lcom/vkontakte/android/NewsWidget;->access$1(I)V

    .line 390
    iget-object v1, p0, Lcom/vkontakte/android/NewsWidget$2;->val$context:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/vkontakte/android/cache/NewsfeedCache;->replace([Lcom/vkontakte/android/NewsEntry;Landroid/content/Context;)V

    .line 391
    iget-object v1, p0, Lcom/vkontakte/android/NewsWidget$2;->val$context:Landroid/content/Context;

    const-string v2, "news"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 392
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 393
    const-string v2, "feed_from"

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 394
    const-string v2, "feed_offset"

    invoke-interface {v1, v2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 395
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 396
    invoke-static {p1}, Lcom/vkontakte/android/NewsWidget;->access$2([Lcom/vkontakte/android/NewsEntry;)V

    .line 397
    iget-object v1, p0, Lcom/vkontakte/android/NewsWidget$2;->this$0:Lcom/vkontakte/android/NewsWidget;

    iget-object v2, p0, Lcom/vkontakte/android/NewsWidget$2;->val$context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/vkontakte/android/NewsWidget;->access$3(Lcom/vkontakte/android/NewsWidget;Landroid/content/Context;)V

    .line 398
    iget-object v1, p0, Lcom/vkontakte/android/NewsWidget$2;->this$0:Lcom/vkontakte/android/NewsWidget;

    invoke-static {}, Lcom/vkontakte/android/NewsWidget;->access$4()Landroid/widget/RemoteViews;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/NewsWidget$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/NewsWidget;->fillData(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    .line 399
    iget-object v1, p0, Lcom/vkontakte/android/NewsWidget$2;->this$0:Lcom/vkontakte/android/NewsWidget;

    iget-object v2, p0, Lcom/vkontakte/android/NewsWidget$2;->val$context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/vkontakte/android/NewsWidget;->access$0(Lcom/vkontakte/android/NewsWidget;Landroid/content/Context;)V

    .line 400
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vkontakte.android.RELOAD_FROM_CACHE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 401
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/vkontakte/android/NewsWidget$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 402
    return-void
.end method
