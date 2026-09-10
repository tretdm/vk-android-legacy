.class Lcom/vkontakte/android/NewsView$6;
.super Ljava/lang/Object;
.source "NewsView.java"

# interfaces
.implements Lcom/vkontakte/android/api/NewsfeedGet$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewsView;->loadData(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewsView;

.field private final synthetic val$refresh:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewsView;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewsView$6;->this$0:Lcom/vkontakte/android/NewsView;

    iput-boolean p2, p0, Lcom/vkontakte/android/NewsView$6;->val$refresh:Z

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 4
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 366
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$6;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v1, p0, Lcom/vkontakte/android/NewsView$6;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v2, p0, Lcom/vkontakte/android/NewsView$6;->this$0:Lcom/vkontakte/android/NewsView;

    iput-boolean v3, v2, Lcom/vkontakte/android/NewsView;->dataLoading:Z

    invoke-static {v1, v3}, Lcom/vkontakte/android/NewsView;->access$9(Lcom/vkontakte/android/NewsView;Z)V

    invoke-static {v0, v3}, Lcom/vkontakte/android/NewsView;->access$10(Lcom/vkontakte/android/NewsView;Z)V

    .line 367
    iget-boolean v0, p0, Lcom/vkontakte/android/NewsView$6;->val$refresh:Z

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$6;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v0, v0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->refreshDone()V

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$6;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090057

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 371
    return-void
.end method

.method public success([Lcom/vkontakte/android/NewsEntry;)V
    .locals 6
    .param p1, "news"    # [Lcom/vkontakte/android/NewsEntry;

    .prologue
    const/16 v4, 0xa

    const/4 v5, 0x0

    .line 339
    iget-boolean v3, p0, Lcom/vkontakte/android/NewsView$6;->val$refresh:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/vkontakte/android/NewsView$6;->this$0:Lcom/vkontakte/android/NewsView;

    iget v3, v3, Lcom/vkontakte/android/NewsView;->lastUpdateTime:I

    if-nez v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/NewsView$6;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v3}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/vkontakte/android/cache/NewsfeedCache;->replace([Lcom/vkontakte/android/NewsEntry;Landroid/content/Context;)V

    .line 340
    :cond_1
    array-length v3, p1

    if-gt v3, v4, :cond_6

    .line 341
    iget-object v3, p0, Lcom/vkontakte/android/NewsView$6;->this$0:Lcom/vkontakte/android/NewsView;

    iget-boolean v3, v3, Lcom/vkontakte/android/NewsView;->preloading:Z

    if-eqz v3, :cond_5

    .line 342
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-lt v0, v3, :cond_4

    .line 343
    iget-object v3, p0, Lcom/vkontakte/android/NewsView$6;->this$0:Lcom/vkontakte/android/NewsView;

    iput-boolean v5, v3, Lcom/vkontakte/android/NewsView;->dataLoading:Z

    .line 354
    .end local v0    # "i":I
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/vkontakte/android/NewsView$6;->this$0:Lcom/vkontakte/android/NewsView;

    iput-boolean v5, v3, Lcom/vkontakte/android/NewsView;->preloading:Z

    .line 355
    iget-object v3, p0, Lcom/vkontakte/android/NewsView$6;->this$0:Lcom/vkontakte/android/NewsView;

    iget-boolean v3, v3, Lcom/vkontakte/android/NewsView;->preloadOnReady:Z

    if-eqz v3, :cond_3

    .line 356
    iget-object v3, p0, Lcom/vkontakte/android/NewsView$6;->this$0:Lcom/vkontakte/android/NewsView;

    iput-boolean v5, v3, Lcom/vkontakte/android/NewsView;->preloadOnReady:Z

    .line 357
    iget-object v3, p0, Lcom/vkontakte/android/NewsView$6;->this$0:Lcom/vkontakte/android/NewsView;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/vkontakte/android/NewsView;->preloading:Z

    .line 358
    iget-object v3, p0, Lcom/vkontakte/android/NewsView$6;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v3, v5}, Lcom/vkontakte/android/NewsView;->loadData(Z)V

    .line 360
    :cond_3
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/vkontakte/android/NewsView$6;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v3}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/vkontakte/android/NewsWidget;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 361
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "Update"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    iget-object v3, p0, Lcom/vkontakte/android/NewsView$6;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v3}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 363
    return-void

    .line 342
    .end local v1    # "intent":Landroid/content/Intent;
    .restart local v0    # "i":I
    :cond_4
    iget-object v3, p0, Lcom/vkontakte/android/NewsView$6;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v3, v3, Lcom/vkontakte/android/NewsView;->preloadedNews:Ljava/util/Vector;

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 345
    .end local v0    # "i":I
    :cond_5
    iget-object v3, p0, Lcom/vkontakte/android/NewsView$6;->this$0:Lcom/vkontakte/android/NewsView;

    iget-boolean v4, p0, Lcom/vkontakte/android/NewsView$6;->val$refresh:Z

    invoke-virtual {v3, p1, v4}, Lcom/vkontakte/android/NewsView;->onDataLoaded([Lcom/vkontakte/android/NewsEntry;Z)V

    goto :goto_1

    .line 348
    :cond_6
    new-array v2, v4, [Lcom/vkontakte/android/NewsEntry;

    .line 349
    .local v2, "nn":[Lcom/vkontakte/android/NewsEntry;
    invoke-static {p1, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 350
    iget-object v3, p0, Lcom/vkontakte/android/NewsView$6;->this$0:Lcom/vkontakte/android/NewsView;

    iget-boolean v4, p0, Lcom/vkontakte/android/NewsView$6;->val$refresh:Z

    invoke-virtual {v3, v2, v4}, Lcom/vkontakte/android/NewsView;->onDataLoaded([Lcom/vkontakte/android/NewsEntry;Z)V

    .line 351
    iget-boolean v3, p0, Lcom/vkontakte/android/NewsView$6;->val$refresh:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/vkontakte/android/NewsView$6;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v3, v3, Lcom/vkontakte/android/NewsView;->preloadedNews:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    .line 352
    :cond_7
    const/16 v0, 0xa

    .restart local v0    # "i":I
    :goto_2
    array-length v3, p1

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/vkontakte/android/NewsView$6;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v3, v3, Lcom/vkontakte/android/NewsView;->preloadedNews:Ljava/util/Vector;

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
