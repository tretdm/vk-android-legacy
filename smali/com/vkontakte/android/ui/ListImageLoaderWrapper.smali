.class public Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
.super Ljava/lang/Object;
.source "ListImageLoaderWrapper.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Loader;,
        Lcom/vkontakte/android/ui/ListImageLoaderWrapper$ScrollStopDetector;,
        Lcom/vkontakte/android/ui/ListImageLoaderWrapper$ExtendedListener;,
        Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;
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

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean v5, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->retrying:Z

    .line 25
    iput-boolean v5, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->lastScrollFwd:Z

    .line 27
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->lastChangeTime:J

    .line 28
    iput-boolean v5, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->wasFastScrolling:Z

    .line 31
    iput-boolean v5, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isScrolling:Z

    .line 36
    new-instance v3, Lcom/vkontakte/android/ui/NewListImageLoader;

    invoke-direct {v3}, Lcom/vkontakte/android/ui/NewListImageLoader;-><init>()V

    iput-object v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->imgLoader:Lcom/vkontakte/android/ui/NewListImageLoader;

    .line 37
    iget-object v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->imgLoader:Lcom/vkontakte/android/ui/NewListImageLoader;

    invoke-virtual {v3, p1}, Lcom/vkontakte/android/ui/NewListImageLoader;->setAdapter(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;)V

    .line 38
    iput-object p3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->listener:Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;

    .line 39
    iput-object p2, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->list:Landroid/widget/AdapterView;

    .line 40
    iget-object v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->list:Landroid/widget/AdapterView;

    instance-of v3, v3, Landroid/widget/AbsListView;

    if-eqz v3, :cond_1

    .line 41
    iget-object v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->list:Landroid/widget/AdapterView;

    check-cast v3, Landroid/widget/AbsListView;

    invoke-virtual {v3, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 49
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/widget/AdapterView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v4, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$1;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$1;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 79
    return-void

    .line 44
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->list:Landroid/widget/AdapterView;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 45
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "setOnScrollListener"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/widget/AbsListView$OnScrollListener;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 46
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

    .line 47
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .local v2, "x":Ljava/lang/Exception;
    const-string v3, "vk"

    invoke-static {v3, v2}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)Landroid/widget/AdapterView;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->list:Landroid/widget/AdapterView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isScrolling:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->lastScrollFwd:Z

    return v0
.end method

.method static synthetic access$102(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
    .param p1, "x1"    # Z

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isScrolling:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->loadRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$200(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->scrollStopRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$202(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->scrollStopRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$400(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->doUpdateImages()V

    return-void
.end method

.method static synthetic access$500(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;Landroid/widget/AbsListView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
    .param p1, "x1"    # Landroid/widget/AbsListView;
    .param p2, "x2"    # I

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->realScrollStateChanged(Landroid/widget/AbsListView;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .prologue
    .line 15
    iget v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viStart:I

    return v0
.end method

.method static synthetic access$700(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->getNumHeaders()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .prologue
    .line 15
    iget v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viCount:I

    return v0
.end method

.method static synthetic access$900(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)Lcom/vkontakte/android/ui/NewListImageLoader;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->imgLoader:Lcom/vkontakte/android/ui/NewListImageLoader;

    return-object v0
.end method

.method private doUpdateImages()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 108
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->imgLoader:Lcom/vkontakte/android/ui/NewListImageLoader;

    iput-boolean v2, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isScrolling:Z

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/NewListImageLoader;->setIsScrolling(Z)V

    .line 109
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->list:Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viStart:I

    .line 110
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->list:Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v0

    iget v1, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viStart:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viCount:I

    .line 111
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->retrying:Z

    .line 112
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

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->imgLoader:Lcom/vkontakte/android/ui/NewListImageLoader;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/NewListImageLoader;->cancelAll()V

    .line 117
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

    .line 118
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->imgLoader:Lcom/vkontakte/android/ui/NewListImageLoader;

    iget v1, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viStart:I

    iget v2, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viStart:I

    iget v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viCount:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ui/NewListImageLoader;->loadRange(II)V

    .line 119
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

    .line 120
    return-void
.end method

.method private getNumFooters()I
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->list:Landroid/widget/AdapterView;

    instance-of v0, v0, Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->list:Landroid/widget/AdapterView;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    .line 298
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNumHeaders()I
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->list:Landroid/widget/AdapterView;

    instance-of v0, v0, Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->list:Landroid/widget/AdapterView;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    .line 292
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

    .line 249
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->listener:Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->listener:Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;

    invoke-interface {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;->onScrollStopped()V

    .line 250
    :cond_0
    if-ne p2, v2, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->listener:Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->listener:Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;

    invoke-interface {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;->onScrollStarted()V

    .line 251
    :cond_1
    if-ne p2, v2, :cond_2

    .line 253
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->imgLoader:Lcom/vkontakte/android/ui/NewListImageLoader;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/NewListImageLoader;->cancelAll()V

    .line 255
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 260
    :cond_3
    if-nez p2, :cond_5

    .line 261
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->imgLoader:Lcom/vkontakte/android/ui/NewListImageLoader;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/NewListImageLoader;->setIsScrolling(Z)V

    .line 269
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->wasFastScrolling:Z

    .line 270
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->imgLoader:Lcom/vkontakte/android/ui/NewListImageLoader;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/NewListImageLoader;->cancelAll()V

    .line 271
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->imgLoader:Lcom/vkontakte/android/ui/NewListImageLoader;

    iget v1, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viStart:I

    invoke-direct {p0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->getNumHeaders()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viStart:I

    iget v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viCount:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ui/NewListImageLoader;->loadRange(II)V

    .line 272
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->lastScrollFwd:Z

    if-eqz v0, :cond_4

    .line 273
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->imgLoader:Lcom/vkontakte/android/ui/NewListImageLoader;

    iget v1, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viStart:I

    iget v2, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viStart:I

    iget v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viCount:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ui/NewListImageLoader;->loadRange(II)V

    .line 274
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

    .line 287
    :goto_0
    return-void

    .line 276
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

    .line 277
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

    .line 281
    :cond_5
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->loadRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_6

    .line 282
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->list:Landroid/widget/AdapterView;

    iget-object v1, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->loadRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 283
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->loadRunnable:Ljava/lang/Runnable;

    .line 285
    :cond_6
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->imgLoader:Lcom/vkontakte/android/ui/NewListImageLoader;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/NewListImageLoader;->setIsScrolling(Z)V

    goto :goto_0
.end method


# virtual methods
.method public activate()V
    .locals 0

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->updateImages()V

    .line 129
    return-void
.end method

.method public callScrolledToLastItem()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->listener:Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->listener:Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;

    invoke-interface {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;->onScrolledToLastItem()V

    .line 245
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->imgLoader:Lcom/vkontakte/android/ui/NewListImageLoader;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/NewListImageLoader;->cancelAll()V

    .line 133
    return-void
.end method

.method public get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 142
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
    .line 302
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->list:Landroid/widget/AdapterView;

    return-object v0
.end method

.method public isAlreadyLoaded(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 137
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

    .line 164
    iget-object v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 165
    :cond_0
    iget v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viStart:I

    if-eq v3, p2, :cond_1

    .line 166
    iget v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viStart:I

    if-ge v3, p2, :cond_7

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->lastScrollFwd:Z

    .line 167
    :cond_1
    iput p3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viCount:I

    .line 168
    iput p2, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viStart:I

    .line 170
    iget v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viCount:I

    iget v6, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viStart:I

    add-int v2, v3, v6

    .line 180
    .local v2, "visLast":I
    iget v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->prevVisLast:I

    if-ne v2, v3, :cond_2

    iget v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viStart:I

    iget v6, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->prevVisFirst:I

    if-eq v3, v6, :cond_4

    .line 181
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->lastChangeTime:J

    sub-long v0, v6, v8

    .line 183
    .local v0, "tDiff":J
    const-wide/16 v6, 0x96

    cmp-long v3, v0, v6

    if-lez v3, :cond_d

    .line 184
    iget-boolean v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->wasFastScrolling:Z

    if-eqz v3, :cond_9

    .line 185
    iget-object v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->imgLoader:Lcom/vkontakte/android/ui/NewListImageLoader;

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ui/NewListImageLoader;->setIsScrolling(Z)V

    .line 186
    iput-boolean v5, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->wasFastScrolling:Z

    .line 187
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

    .line 188
    iget-boolean v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->lastScrollFwd:Z

    if-eqz v3, :cond_8

    .line 189
    iget-object v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->imgLoader:Lcom/vkontakte/android/ui/NewListImageLoader;

    iget v4, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viStart:I

    iget v5, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viCount:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viStart:I

    iget v6, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viCount:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/vkontakte/android/ui/NewListImageLoader;->loadRange(II)V

    .line 190
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

    .line 222
    :cond_3
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->lastChangeTime:J

    .line 223
    iget v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viStart:I

    iput v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->prevVisFirst:I

    .line 224
    iput v2, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->prevVisLast:I

    .line 227
    .end local v0    # "tDiff":J
    :cond_4
    add-int v3, p2, p3

    if-ne v3, p4, :cond_5

    if-eqz p3, :cond_5

    if-eqz p4, :cond_5

    .line 228
    iget-object v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->listener:Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->listener:Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;

    invoke-interface {v3}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;->onScrolledToLastItem()V

    .line 230
    :cond_5
    iget-object v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->listener:Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->listener:Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;

    instance-of v3, v3, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$ExtendedListener;

    if-eqz v3, :cond_6

    .line 231
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

    .line 233
    :cond_6
    return-void

    .end local v2    # "visLast":I
    :cond_7
    move v3, v5

    .line 166
    goto/16 :goto_0

    .line 192
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

    .line 193
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

    .line 196
    :cond_9
    iget v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->prevVisFirst:I

    iget v4, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viStart:I

    if-le v3, v4, :cond_a

    .line 198
    iget-object v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->imgLoader:Lcom/vkontakte/android/ui/NewListImageLoader;

    iget v4, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viStart:I

    iget v5, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->prevVisFirst:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Lcom/vkontakte/android/ui/NewListImageLoader;->loadRange(II)V

    .line 200
    :cond_a
    iget v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->prevVisLast:I

    if-ge v3, v2, :cond_b

    .line 202
    iget-object v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->imgLoader:Lcom/vkontakte/android/ui/NewListImageLoader;

    iget v4, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->prevVisLast:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4, v2}, Lcom/vkontakte/android/ui/NewListImageLoader;->loadRange(II)V

    .line 204
    :cond_b
    iget v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->prevVisLast:I

    if-le v3, v2, :cond_c

    .line 205
    iget-object v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->imgLoader:Lcom/vkontakte/android/ui/NewListImageLoader;

    add-int/lit8 v4, v2, 0x1

    iget v5, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->prevVisLast:I

    invoke-virtual {v3, v4, v5}, Lcom/vkontakte/android/ui/NewListImageLoader;->cancelRange(II)V

    .line 207
    :cond_c
    iget v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->prevVisFirst:I

    iget v4, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viStart:I

    if-ge v3, v4, :cond_3

    .line 208
    iget-object v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->imgLoader:Lcom/vkontakte/android/ui/NewListImageLoader;

    iget v4, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->prevVisFirst:I

    iget v5, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viStart:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Lcom/vkontakte/android/ui/NewListImageLoader;->cancelRange(II)V

    goto/16 :goto_1

    .line 212
    :cond_d
    iget-object v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->imgLoader:Lcom/vkontakte/android/ui/NewListImageLoader;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/NewListImageLoader;->cancelAll()V

    .line 213
    iput-boolean v4, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->wasFastScrolling:Z

    goto/16 :goto_1
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 237
    if-eqz p2, :cond_0

    .line 238
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->realScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isScrolling:Z

    .line 241
    :cond_0
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "sl"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 83
    return-void
.end method

.method public updateImages()V
    .locals 4

    .prologue
    .line 87
    new-instance v0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$2;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)V

    .line 96
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->list:Landroid/widget/AdapterView;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$3;

    invoke-direct {v2, p0, v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$3;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 104
    iget-object v1, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->list:Landroid/widget/AdapterView;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/AdapterView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 105
    return-void
.end method
