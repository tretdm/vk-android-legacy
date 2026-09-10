.class public Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
.super Ljava/lang/Object;
.source "ListImageLoaderWrapper.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/ui/ListImageLoaderWrapper$ExtendedListener;,
        Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;,
        Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Loader;,
        Lcom/vkontakte/android/ui/ListImageLoaderWrapper$ScrollStopDetector;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "vk-img-wrapper"


# instance fields
.field private imgLoader:Lcom/vkontakte/android/ui/NewListImageLoader;

.field private isScrolling:Z

.field private lastChangeTime:J

.field private lastScrollFwd:Z

.field private list:Landroid/widget/AdapterView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView",
            "<*>;"
        }
    .end annotation
.end field

.field private listener:Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;

.field private loadRunnable:Ljava/lang/Runnable;

.field private prevVisFirst:I

.field private prevVisLast:I

.field private retrying:Z

.field private scrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private scrollStopRunnable:Ljava/lang/Runnable;

.field private viCount:I

.field private viStart:I

.field private wasFastScrolling:Z


# direct methods
.method public constructor <init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/AdapterView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V
    .locals 7
    .param p1, "adapter"    # Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
    .param p3, "listener"    # Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkontakte/android/ui/ListImageLoaderAdapter;",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "listView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v5, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->retrying:Z

    .line 26
    iput-boolean v5, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->lastScrollFwd:Z

    .line 28
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->lastChangeTime:J

    .line 29
    iput-boolean v5, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->wasFastScrolling:Z

    .line 32
    iput-boolean v5, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isScrolling:Z

    .line 37
    new-instance v3, Lcom/vkontakte/android/ui/NewListImageLoader;

    invoke-direct {v3}, Lcom/vkontakte/android/ui/NewListImageLoader;-><init>()V

    iput-object v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->imgLoader:Lcom/vkontakte/android/ui/NewListImageLoader;

    .line 38
    iget-object v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->imgLoader:Lcom/vkontakte/android/ui/NewListImageLoader;

    invoke-virtual {v3, p1}, Lcom/vkontakte/android/ui/NewListImageLoader;->setAdapter(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;)V

    .line 39
    iput-object p3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->listener:Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;

    .line 40
    iput-object p2, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->list:Landroid/widget/AdapterView;

    .line 41
    iget-object v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->list:Landroid/widget/AdapterView;

    instance-of v3, v3, Landroid/widget/AbsListView;

    if-eqz v3, :cond_1

    .line 42
    iget-object v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->list:Landroid/widget/AdapterView;

    check-cast v3, Landroid/widget/AbsListView;

    invoke-virtual {v3, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 50
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/widget/AdapterView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v4, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$1;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$1;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 80
    return-void

    .line 45
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->list:Landroid/widget/AdapterView;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 46
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "setOnScrollListener"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/widget/AbsListView$OnScrollListener;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 47
    .local v1, "m":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->list:Landroid/widget/AdapterView;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 48
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .local v2, "x":Ljava/lang/Exception;
    const-string v3, "vk"

    invoke-static {v3, v2}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)Landroid/widget/AdapterView;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->list:Landroid/widget/AdapterView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;Landroid/widget/AbsListView;I)V
    .locals 0

    .prologue
    .line 248
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->realScrollStateChanged(Landroid/widget/AbsListView;I)V

    return-void
.end method

.method static synthetic access$10(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->scrollStopRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$11(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isScrolling:Z

    return v0
.end method

.method static synthetic access$12(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->doUpdateImages()V

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;Z)V
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isScrolling:Z

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->scrollStopRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$4(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)Lcom/vkontakte/android/ui/NewListImageLoader;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->imgLoader:Lcom/vkontakte/android/ui/NewListImageLoader;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viStart:I

    return v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)I
    .locals 1

    .prologue
    .line 290
    invoke-direct {p0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->getNumHeaders()I

    move-result v0

    return v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viCount:I

    return v0
.end method

.method static synthetic access$8(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->lastScrollFwd:Z

    return v0
.end method

.method static synthetic access$9(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->loadRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private doUpdateImages()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 109
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->imgLoader:Lcom/vkontakte/android/ui/NewListImageLoader;

    iput-boolean v2, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isScrolling:Z

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/NewListImageLoader;->setIsScrolling(Z)V

    .line 110
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->list:Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viStart:I

    .line 111
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->list:Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v0

    iget v1, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viStart:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viCount:I

    .line 112
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->retrying:Z

    .line 113
    iget v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viCount:I

    if-gtz v0, :cond_0

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->list:Landroid/widget/AdapterView;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v1

    iget-object v2, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->list:Landroid/widget/AdapterView;

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viCount:I

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->imgLoader:Lcom/vkontakte/android/ui/NewListImageLoader;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/NewListImageLoader;->cancelAll()V

    .line 118
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->imgLoader:Lcom/vkontakte/android/ui/NewListImageLoader;

    iget v1, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viStart:I

    invoke-direct {p0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->getNumHeaders()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viStart:I

    iget v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viCount:I

    add-int/2addr v2, v3

    invoke-direct {p0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->getNumHeaders()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ui/NewListImageLoader;->loadRange(II)V

    .line 119
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->imgLoader:Lcom/vkontakte/android/ui/NewListImageLoader;

    iget v1, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viStart:I

    iget v2, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viStart:I

    iget v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viCount:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ui/NewListImageLoader;->loadRange(II)V

    .line 120
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->imgLoader:Lcom/vkontakte/android/ui/NewListImageLoader;

    iget v1, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viStart:I

    invoke-direct {p0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->getNumHeaders()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viCount:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viStart:I

    iget v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viCount:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ui/NewListImageLoader;->loadRange(II)V

    .line 121
    return-void
.end method

.method private getNumFooters()I
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->list:Landroid/widget/AdapterView;

    instance-of v0, v0, Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->list:Landroid/widget/AdapterView;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    .line 299
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNumHeaders()I
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->list:Landroid/widget/AdapterView;

    instance-of v0, v0, Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->list:Landroid/widget/AdapterView;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    .line 293
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private realScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 4
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 250
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->listener:Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->listener:Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;

    invoke-interface {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;->onScrollStopped()V

    .line 251
    :cond_0
    if-ne p2, v2, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->listener:Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->listener:Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;

    invoke-interface {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;->onScrollStarted()V

    .line 252
    :cond_1
    if-ne p2, v2, :cond_2

    .line 254
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->imgLoader:Lcom/vkontakte/android/ui/NewListImageLoader;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/NewListImageLoader;->cancelAll()V

    .line 256
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 261
    :cond_3
    if-nez p2, :cond_5

    .line 262
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->imgLoader:Lcom/vkontakte/android/ui/NewListImageLoader;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/NewListImageLoader;->setIsScrolling(Z)V

    .line 270
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->wasFastScrolling:Z

    .line 271
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->imgLoader:Lcom/vkontakte/android/ui/NewListImageLoader;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/NewListImageLoader;->cancelAll()V

    .line 272
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->imgLoader:Lcom/vkontakte/android/ui/NewListImageLoader;

    iget v1, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viStart:I

    invoke-direct {p0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->getNumHeaders()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viStart:I

    iget v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viCount:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ui/NewListImageLoader;->loadRange(II)V

    .line 273
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->lastScrollFwd:Z

    if-eqz v0, :cond_4

    .line 274
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->imgLoader:Lcom/vkontakte/android/ui/NewListImageLoader;

    iget v1, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viStart:I

    iget v2, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viStart:I

    iget v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viCount:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ui/NewListImageLoader;->loadRange(II)V

    .line 275
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->imgLoader:Lcom/vkontakte/android/ui/NewListImageLoader;

    iget v1, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viStart:I

    invoke-direct {p0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->getNumHeaders()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viCount:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viStart:I

    iget v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viCount:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ui/NewListImageLoader;->loadRange(II)V

    .line 288
    :goto_0
    return-void

    .line 277
    :cond_4
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->imgLoader:Lcom/vkontakte/android/ui/NewListImageLoader;

    iget v1, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viStart:I

    invoke-direct {p0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->getNumHeaders()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viCount:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viStart:I

    iget v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viCount:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ui/NewListImageLoader;->loadRange(II)V

    .line 278
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->imgLoader:Lcom/vkontakte/android/ui/NewListImageLoader;

    iget v1, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viStart:I

    iget v2, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viStart:I

    iget v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viCount:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ui/NewListImageLoader;->loadRange(II)V

    goto :goto_0

    .line 282
    :cond_5
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->loadRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_6

    .line 283
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->list:Landroid/widget/AdapterView;

    iget-object v1, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->loadRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 284
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->loadRunnable:Ljava/lang/Runnable;

    .line 286
    :cond_6
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->imgLoader:Lcom/vkontakte/android/ui/NewListImageLoader;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/NewListImageLoader;->setIsScrolling(Z)V

    goto :goto_0
.end method


# virtual methods
.method public activate()V
    .locals 0

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->updateImages()V

    .line 130
    return-void
.end method

.method public callScrolledToLastItem()V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->listener:Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->listener:Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;

    invoke-interface {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;->onScrolledToLastItem()V

    .line 246
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 0

    .prologue
    .line 125
    return-void
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->imgLoader:Lcom/vkontakte/android/ui/NewListImageLoader;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/NewListImageLoader;->cancelAll()V

    .line 134
    return-void
.end method

.method public get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 143
    invoke-static {p1}, Lcom/vkontakte/android/ImageCache;->getFromTop(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getListView()Landroid/widget/AdapterView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/AdapterView",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 303
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->list:Landroid/widget/AdapterView;

    return-object v0
.end method

.method public isAlreadyLoaded(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 138
    invoke-static {p1}, Lcom/vkontakte/android/ImageCache;->isInTopCache(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 10
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 165
    iget-object v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 166
    :cond_0
    iget v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viStart:I

    if-eq v3, p2, :cond_1

    .line 167
    iget v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viStart:I

    if-ge v3, p2, :cond_7

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->lastScrollFwd:Z

    .line 168
    :cond_1
    iput p3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viCount:I

    .line 169
    iput p2, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viStart:I

    .line 171
    iget v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viCount:I

    iget v6, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viStart:I

    add-int v2, v3, v6

    .line 181
    .local v2, "visLast":I
    iget v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->prevVisLast:I

    if-ne v2, v3, :cond_2

    iget v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viStart:I

    iget v6, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->prevVisFirst:I

    if-eq v3, v6, :cond_4

    .line 182
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->lastChangeTime:J

    sub-long v0, v6, v8

    .line 184
    .local v0, "tDiff":J
    const-wide/16 v6, 0x96

    cmp-long v3, v0, v6

    if-lez v3, :cond_d

    .line 185
    iget-boolean v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->wasFastScrolling:Z

    if-eqz v3, :cond_9

    .line 186
    iget-object v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->imgLoader:Lcom/vkontakte/android/ui/NewListImageLoader;

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ui/NewListImageLoader;->setIsScrolling(Z)V

    .line 187
    iput-boolean v5, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->wasFastScrolling:Z

    .line 188
    iget-object v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->imgLoader:Lcom/vkontakte/android/ui/NewListImageLoader;

    iget-object v4, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->list:Landroid/widget/AdapterView;

    invoke-virtual {v4}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v4

    invoke-direct {p0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->getNumHeaders()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->list:Landroid/widget/AdapterView;

    invoke-virtual {v5}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/vkontakte/android/ui/NewListImageLoader;->loadRange(II)V

    .line 189
    iget-boolean v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->lastScrollFwd:Z

    if-eqz v3, :cond_8

    .line 190
    iget-object v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->imgLoader:Lcom/vkontakte/android/ui/NewListImageLoader;

    iget v4, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viStart:I

    iget v5, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viCount:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viStart:I

    iget v6, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viCount:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/vkontakte/android/ui/NewListImageLoader;->loadRange(II)V

    .line 191
    iget-object v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->imgLoader:Lcom/vkontakte/android/ui/NewListImageLoader;

    iget v4, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viStart:I

    invoke-direct {p0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->getNumHeaders()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viCount:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viStart:I

    iget v6, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viCount:I

    add-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/vkontakte/android/ui/NewListImageLoader;->loadRange(II)V

    .line 223
    :cond_3
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->lastChangeTime:J

    .line 224
    iget v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viStart:I

    iput v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->prevVisFirst:I

    .line 225
    iput v2, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->prevVisLast:I

    .line 228
    .end local v0    # "tDiff":J
    :cond_4
    add-int v3, p2, p3

    if-ne v3, p4, :cond_5

    if-eqz p3, :cond_5

    if-eqz p4, :cond_5

    .line 229
    iget-object v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->listener:Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->listener:Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;

    invoke-interface {v3}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;->onScrolledToLastItem()V

    .line 231
    :cond_5
    iget-object v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->listener:Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->listener:Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;

    instance-of v3, v3, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$ExtendedListener;

    if-eqz v3, :cond_6

    .line 232
    iget-object v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->listener:Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;

    check-cast v3, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$ExtendedListener;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->getNumHeaders()I

    move-result v4

    sub-int v4, p2, v4

    invoke-direct {p0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->getNumHeaders()I

    move-result v5

    sub-int v5, p4, v5

    invoke-direct {p0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->getNumFooters()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-interface {v3, v4, p3, v5}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$ExtendedListener;->onScroll(III)V

    .line 234
    :cond_6
    return-void

    .end local v2    # "visLast":I
    :cond_7
    move v3, v5

    .line 167
    goto/16 :goto_0

    .line 193
    .restart local v0    # "tDiff":J
    .restart local v2    # "visLast":I
    :cond_8
    iget-object v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->imgLoader:Lcom/vkontakte/android/ui/NewListImageLoader;

    iget v4, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viStart:I

    invoke-direct {p0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->getNumHeaders()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viCount:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viStart:I

    iget v6, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viCount:I

    add-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/vkontakte/android/ui/NewListImageLoader;->loadRange(II)V

    .line 194
    iget-object v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->imgLoader:Lcom/vkontakte/android/ui/NewListImageLoader;

    iget v4, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viStart:I

    iget v5, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viCount:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viStart:I

    iget v6, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viCount:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/vkontakte/android/ui/NewListImageLoader;->loadRange(II)V

    goto :goto_1

    .line 197
    :cond_9
    iget v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->prevVisFirst:I

    iget v4, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viStart:I

    if-le v3, v4, :cond_a

    .line 199
    iget-object v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->imgLoader:Lcom/vkontakte/android/ui/NewListImageLoader;

    iget v4, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viStart:I

    iget v5, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->prevVisFirst:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Lcom/vkontakte/android/ui/NewListImageLoader;->loadRange(II)V

    .line 201
    :cond_a
    iget v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->prevVisLast:I

    if-ge v3, v2, :cond_b

    .line 203
    iget-object v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->imgLoader:Lcom/vkontakte/android/ui/NewListImageLoader;

    iget v4, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->prevVisLast:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4, v2}, Lcom/vkontakte/android/ui/NewListImageLoader;->loadRange(II)V

    .line 205
    :cond_b
    iget v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->prevVisLast:I

    if-le v3, v2, :cond_c

    .line 206
    iget-object v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->imgLoader:Lcom/vkontakte/android/ui/NewListImageLoader;

    add-int/lit8 v4, v2, 0x1

    iget v5, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->prevVisLast:I

    invoke-virtual {v3, v4, v5}, Lcom/vkontakte/android/ui/NewListImageLoader;->cancelRange(II)V

    .line 208
    :cond_c
    iget v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->prevVisFirst:I

    iget v4, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viStart:I

    if-ge v3, v4, :cond_3

    .line 209
    iget-object v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->imgLoader:Lcom/vkontakte/android/ui/NewListImageLoader;

    iget v4, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->prevVisFirst:I

    iget v5, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viStart:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Lcom/vkontakte/android/ui/NewListImageLoader;->cancelRange(II)V

    goto/16 :goto_1

    .line 213
    :cond_d
    iget-object v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->imgLoader:Lcom/vkontakte/android/ui/NewListImageLoader;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/NewListImageLoader;->cancelAll()V

    .line 214
    iput-boolean v4, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->wasFastScrolling:Z

    goto/16 :goto_1
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 238
    if-eqz p2, :cond_0

    .line 239
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->realScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isScrolling:Z

    .line 242
    :cond_0
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "sl"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 84
    return-void
.end method

.method public updateImages()V
    .locals 4

    .prologue
    .line 88
    new-instance v0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$2;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)V

    .line 97
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->list:Landroid/widget/AdapterView;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$3;

    invoke-direct {v2, p0, v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$3;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 105
    iget-object v1, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->list:Landroid/widget/AdapterView;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/AdapterView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 106
    return-void
.end method
