.class Lcom/vkontakte/android/PhotoAlbumsView$ScrollStopTimerTask;
.super Ljava/util/TimerTask;
.source "PhotoAlbumsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/PhotoAlbumsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollStopTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PhotoAlbumsView;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/PhotoAlbumsView;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/vkontakte/android/PhotoAlbumsView$ScrollStopTimerTask;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/PhotoAlbumsView;Lcom/vkontakte/android/PhotoAlbumsView$ScrollStopTimerTask;)V
    .locals 0

    .prologue
    .line 288
    invoke-direct {p0, p1}, Lcom/vkontakte/android/PhotoAlbumsView$ScrollStopTimerTask;-><init>(Lcom/vkontakte/android/PhotoAlbumsView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 291
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView$ScrollStopTimerTask;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoAlbumsView;->access$1(Lcom/vkontakte/android/PhotoAlbumsView;)Lcom/vkontakte/android/ui/ListImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/PhotoAlbumsView$ScrollStopTimerTask;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v1}, Lcom/vkontakte/android/PhotoAlbumsView;->access$3(Lcom/vkontakte/android/PhotoAlbumsView;)I

    move-result v1

    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView$ScrollStopTimerTask;->this$0:Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-static {v2}, Lcom/vkontakte/android/PhotoAlbumsView;->access$4(Lcom/vkontakte/android/PhotoAlbumsView;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ui/ListImageLoader;->load(II)V

    .line 292
    return-void
.end method
