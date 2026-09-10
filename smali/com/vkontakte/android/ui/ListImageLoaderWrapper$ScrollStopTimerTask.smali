.class Lcom/vkontakte/android/ui/ListImageLoaderWrapper$ScrollStopTimerTask;
.super Ljava/util/TimerTask;
.source "ListImageLoaderWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollStopTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$ScrollStopTimerTask;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$ScrollStopTimerTask;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$ScrollStopTimerTask;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$ScrollStopTimerTask;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$0(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)Lcom/vkontakte/android/ui/ListImageLoader;

    move-result-object v1

    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$ScrollStopTimerTask;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$1(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)I

    move-result v0

    iget-object v2, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$ScrollStopTimerTask;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v2}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$2(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v2, v0, v2

    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$ScrollStopTimerTask;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$0(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)Lcom/vkontakte/android/ui/ListImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoader;->getAdapter()Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/vkontakte/android/MultiSectionImageLoaderAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$ScrollStopTimerTask;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$0(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)Lcom/vkontakte/android/ui/ListImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoader;->getAdapter()Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/MultiSectionImageLoaderAdapter;

    invoke-virtual {v0}, Lcom/vkontakte/android/MultiSectionImageLoaderAdapter;->getSectionHeadersCount()I

    move-result v0

    :goto_0
    sub-int v0, v2, v0

    iget-object v2, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$ScrollStopTimerTask;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v2}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$3(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/vkontakte/android/ui/ListImageLoader;->load(II)V

    .line 101
    return-void

    .line 100
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
