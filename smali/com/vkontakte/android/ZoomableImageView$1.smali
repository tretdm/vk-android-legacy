.class Lcom/vkontakte/android/ZoomableImageView$1;
.super Ljava/util/TimerTask;
.source "ZoomableImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ZoomableImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ZoomableImageView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ZoomableImageView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ZoomableImageView$1;->this$0:Lcom/vkontakte/android/ZoomableImageView;

    .line 137
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ZoomableImageView$1;)Lcom/vkontakte/android/ZoomableImageView;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/vkontakte/android/ZoomableImageView$1;->this$0:Lcom/vkontakte/android/ZoomableImageView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/vkontakte/android/ZoomableImageView$1;->this$0:Lcom/vkontakte/android/ZoomableImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/ZoomableImageView;->access$1(Lcom/vkontakte/android/ZoomableImageView;Ljava/util/Timer;)V

    .line 141
    iget-object v0, p0, Lcom/vkontakte/android/ZoomableImageView$1;->this$0:Lcom/vkontakte/android/ZoomableImageView;

    new-instance v1, Lcom/vkontakte/android/ZoomableImageView$1$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ZoomableImageView$1$1;-><init>(Lcom/vkontakte/android/ZoomableImageView$1;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ZoomableImageView;->post(Ljava/lang/Runnable;)Z

    .line 144
    return-void
.end method
