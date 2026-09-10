.class Lcom/vkontakte/android/NewsView$6;
.super Ljava/lang/Object;
.source "NewsView.java"

# interfaces
.implements Lcom/vkontakte/android/api/FaveGetPosts$Callback;


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

    .line 365
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

    .line 391
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$6;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v1, p0, Lcom/vkontakte/android/NewsView$6;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v2, p0, Lcom/vkontakte/android/NewsView$6;->this$0:Lcom/vkontakte/android/NewsView;

    iput-boolean v3, v2, Lcom/vkontakte/android/NewsView;->dataLoading:Z

    invoke-static {v1, v3}, Lcom/vkontakte/android/NewsView;->access$12(Lcom/vkontakte/android/NewsView;Z)V

    invoke-static {v0, v3}, Lcom/vkontakte/android/NewsView;->access$13(Lcom/vkontakte/android/NewsView;Z)V

    .line 392
    iget-boolean v0, p0, Lcom/vkontakte/android/NewsView$6;->val$refresh:Z

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$6;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v0, v0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->refreshDone()V

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$6;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090058

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 396
    return-void
.end method

.method public success([Lcom/vkontakte/android/NewsEntry;I)V
    .locals 5
    .param p1, "news"    # [Lcom/vkontakte/android/NewsEntry;
    .param p2, "total"    # I

    .prologue
    const/16 v3, 0xa

    const/4 v4, 0x0

    .line 368
    array-length v2, p1

    if-gt v2, v3, :cond_4

    .line 369
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$6;->this$0:Lcom/vkontakte/android/NewsView;

    iget-boolean v2, v2, Lcom/vkontakte/android/NewsView;->preloading:Z

    if-eqz v2, :cond_3

    .line 370
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_2

    .line 371
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$6;->this$0:Lcom/vkontakte/android/NewsView;

    iput-boolean v4, v2, Lcom/vkontakte/android/NewsView;->dataLoading:Z

    .line 382
    .end local v0    # "i":I
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$6;->this$0:Lcom/vkontakte/android/NewsView;

    iput-boolean v4, v2, Lcom/vkontakte/android/NewsView;->preloading:Z

    .line 383
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$6;->this$0:Lcom/vkontakte/android/NewsView;

    iget-boolean v2, v2, Lcom/vkontakte/android/NewsView;->preloadOnReady:Z

    if-eqz v2, :cond_1

    .line 384
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$6;->this$0:Lcom/vkontakte/android/NewsView;

    iput-boolean v4, v2, Lcom/vkontakte/android/NewsView;->preloadOnReady:Z

    .line 385
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$6;->this$0:Lcom/vkontakte/android/NewsView;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/vkontakte/android/NewsView;->preloading:Z

    .line 386
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$6;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v2, v4}, Lcom/vkontakte/android/NewsView;->loadData(Z)V

    .line 388
    :cond_1
    return-void

    .line 370
    .restart local v0    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$6;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v2, v2, Lcom/vkontakte/android/NewsView;->preloadedNews:Ljava/util/Vector;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 373
    .end local v0    # "i":I
    :cond_3
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$6;->this$0:Lcom/vkontakte/android/NewsView;

    iget-boolean v3, p0, Lcom/vkontakte/android/NewsView$6;->val$refresh:Z

    invoke-virtual {v2, p1, v3}, Lcom/vkontakte/android/NewsView;->onDataLoaded([Lcom/vkontakte/android/NewsEntry;Z)V

    goto :goto_1

    .line 376
    :cond_4
    new-array v1, v3, [Lcom/vkontakte/android/NewsEntry;

    .line 377
    .local v1, "nn":[Lcom/vkontakte/android/NewsEntry;
    invoke-static {p1, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 378
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$6;->this$0:Lcom/vkontakte/android/NewsView;

    iget-boolean v3, p0, Lcom/vkontakte/android/NewsView$6;->val$refresh:Z

    invoke-virtual {v2, v1, v3}, Lcom/vkontakte/android/NewsView;->onDataLoaded([Lcom/vkontakte/android/NewsEntry;Z)V

    .line 379
    iget-boolean v2, p0, Lcom/vkontakte/android/NewsView$6;->val$refresh:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/vkontakte/android/NewsView$6;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v2, v2, Lcom/vkontakte/android/NewsView;->preloadedNews:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 380
    :cond_5
    const/16 v0, 0xa

    .restart local v0    # "i":I
    :goto_2
    array-length v2, p1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/NewsView$6;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v2, v2, Lcom/vkontakte/android/NewsView;->preloadedNews:Ljava/util/Vector;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
