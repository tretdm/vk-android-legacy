.class Lcom/vkontakte/android/NewsView$7;
.super Ljava/lang/Object;
.source "NewsView.java"

# interfaces
.implements Lcom/vkontakte/android/api/NewsfeedGetComments$Callback;


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
    iput-object p1, p0, Lcom/vkontakte/android/NewsView$7;->this$0:Lcom/vkontakte/android/NewsView;

    iput-boolean p2, p0, Lcom/vkontakte/android/NewsView$7;->val$refresh:Z

    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 447
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$7;->this$0:Lcom/vkontakte/android/NewsView;

    iput-boolean v2, v0, Lcom/vkontakte/android/NewsView;->dataLoading:Z

    .line 448
    iget-boolean v0, p0, Lcom/vkontakte/android/NewsView$7;->val$refresh:Z

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$7;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v0, v0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->refreshDone()V

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$7;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090057

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 452
    return-void
.end method

.method public success([Lcom/vkontakte/android/NewsEntry;Ljava/lang/String;)V
    .locals 6
    .param p1, "news"    # [Lcom/vkontakte/android/NewsEntry;
    .param p2, "newFrom"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x0

    .line 416
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$7;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-static {v2, p2}, Lcom/vkontakte/android/NewsView;->access$11(Lcom/vkontakte/android/NewsView;Ljava/lang/String;)V

    .line 417
    iget-boolean v2, p0, Lcom/vkontakte/android/NewsView$7;->val$refresh:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/NewsView$7;->this$0:Lcom/vkontakte/android/NewsView;

    iget v2, v2, Lcom/vkontakte/android/NewsView;->lastUpdateTime:I

    if-nez v2, :cond_1

    .line 418
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$7;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v2}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/vkontakte/android/cache/NewsfeedCommentsCache;->replace([Lcom/vkontakte/android/NewsEntry;Landroid/content/Context;)V

    .line 419
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$7;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v2}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 420
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 421
    const-string v3, "comments_from"

    invoke-interface {v2, v3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 422
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 425
    :cond_1
    array-length v2, p1

    if-gt v2, v5, :cond_6

    .line 426
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$7;->this$0:Lcom/vkontakte/android/NewsView;

    iget-boolean v2, v2, Lcom/vkontakte/android/NewsView;->preloading:Z

    if-eqz v2, :cond_5

    .line 427
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_4

    .line 428
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$7;->this$0:Lcom/vkontakte/android/NewsView;

    iput-boolean v4, v2, Lcom/vkontakte/android/NewsView;->dataLoading:Z

    .line 438
    .end local v0    # "i":I
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$7;->this$0:Lcom/vkontakte/android/NewsView;

    iput-boolean v4, v2, Lcom/vkontakte/android/NewsView;->preloading:Z

    .line 439
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$7;->this$0:Lcom/vkontakte/android/NewsView;

    iget-boolean v2, v2, Lcom/vkontakte/android/NewsView;->preloadOnReady:Z

    if-eqz v2, :cond_3

    .line 440
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$7;->this$0:Lcom/vkontakte/android/NewsView;

    iput-boolean v4, v2, Lcom/vkontakte/android/NewsView;->preloadOnReady:Z

    .line 441
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$7;->this$0:Lcom/vkontakte/android/NewsView;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/vkontakte/android/NewsView;->preloading:Z

    .line 442
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$7;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v2, v4}, Lcom/vkontakte/android/NewsView;->loadData(Z)V

    .line 444
    :cond_3
    return-void

    .line 427
    .restart local v0    # "i":I
    :cond_4
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$7;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v2, v2, Lcom/vkontakte/android/NewsView;->preloadedNews:Ljava/util/Vector;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 430
    .end local v0    # "i":I
    :cond_5
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$7;->this$0:Lcom/vkontakte/android/NewsView;

    iget-boolean v3, p0, Lcom/vkontakte/android/NewsView$7;->val$refresh:Z

    invoke-virtual {v2, p1, v3}, Lcom/vkontakte/android/NewsView;->onDataLoaded([Lcom/vkontakte/android/NewsEntry;Z)V

    goto :goto_1

    .line 433
    :cond_6
    new-array v1, v5, [Lcom/vkontakte/android/NewsEntry;

    .line 434
    .local v1, "nn":[Lcom/vkontakte/android/NewsEntry;
    invoke-static {p1, v4, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 435
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$7;->this$0:Lcom/vkontakte/android/NewsView;

    iget-boolean v3, p0, Lcom/vkontakte/android/NewsView$7;->val$refresh:Z

    invoke-virtual {v2, v1, v3}, Lcom/vkontakte/android/NewsView;->onDataLoaded([Lcom/vkontakte/android/NewsEntry;Z)V

    .line 436
    const/16 v0, 0xa

    .restart local v0    # "i":I
    :goto_2
    array-length v2, p1

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/vkontakte/android/NewsView$7;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v2, v2, Lcom/vkontakte/android/NewsView;->preloadedNews:Ljava/util/Vector;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
