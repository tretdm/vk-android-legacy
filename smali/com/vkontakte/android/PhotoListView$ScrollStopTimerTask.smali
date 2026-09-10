.class Lcom/vkontakte/android/PhotoListView$ScrollStopTimerTask;
.super Ljava/util/TimerTask;
.source "PhotoListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/PhotoListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollStopTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PhotoListView;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/PhotoListView;)V
    .locals 0

    .prologue
    .line 524
    iput-object p1, p0, Lcom/vkontakte/android/PhotoListView$ScrollStopTimerTask;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/PhotoListView;Lcom/vkontakte/android/PhotoListView$ScrollStopTimerTask;)V
    .locals 0

    .prologue
    .line 524
    invoke-direct {p0, p1}, Lcom/vkontakte/android/PhotoListView$ScrollStopTimerTask;-><init>(Lcom/vkontakte/android/PhotoListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 527
    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView$ScrollStopTimerTask;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoListView;->access$9(Lcom/vkontakte/android/PhotoListView;)Lcom/vkontakte/android/ui/ListImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoader;->cancel()V

    .line 528
    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView$ScrollStopTimerTask;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoListView;->access$9(Lcom/vkontakte/android/PhotoListView;)Lcom/vkontakte/android/ui/ListImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/PhotoListView$ScrollStopTimerTask;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v1}, Lcom/vkontakte/android/PhotoListView;->access$10(Lcom/vkontakte/android/PhotoListView;)I

    move-result v1

    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView$ScrollStopTimerTask;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v2}, Lcom/vkontakte/android/PhotoListView;->access$11(Lcom/vkontakte/android/PhotoListView;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ui/ListImageLoader;->load(II)V

    .line 529
    return-void
.end method
