.class Lcom/vkontakte/android/ZoomableImageView$DoubleTapTimerTask;
.super Ljava/util/TimerTask;
.source "ZoomableImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/ZoomableImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DoubleTapTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ZoomableImageView;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/ZoomableImageView;)V
    .locals 0

    .prologue
    .line 716
    iput-object p1, p0, Lcom/vkontakte/android/ZoomableImageView$DoubleTapTimerTask;->this$0:Lcom/vkontakte/android/ZoomableImageView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/ZoomableImageView;Lcom/vkontakte/android/ZoomableImageView$DoubleTapTimerTask;)V
    .locals 0

    .prologue
    .line 716
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ZoomableImageView$DoubleTapTimerTask;-><init>(Lcom/vkontakte/android/ZoomableImageView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 720
    iget-object v0, p0, Lcom/vkontakte/android/ZoomableImageView$DoubleTapTimerTask;->this$0:Lcom/vkontakte/android/ZoomableImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/ZoomableImageView;->access$0(Lcom/vkontakte/android/ZoomableImageView;Z)V

    .line 721
    return-void
.end method
