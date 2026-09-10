.class Lcom/vkontakte/android/media/NativeVideoPlayer$1;
.super Ljava/util/TimerTask;
.source "NativeVideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/media/NativeVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/media/NativeVideoPlayer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    .line 57
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    iget-object v1, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v1}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$0(Lcom/vkontakte/android/media/NativeVideoPlayer;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$1(Lcom/vkontakte/android/media/NativeVideoPlayer;I)V

    .line 61
    iget-object v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$2(Lcom/vkontakte/android/media/NativeVideoPlayer;I)V

    .line 62
    return-void
.end method
