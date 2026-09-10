.class Lcom/vkontakte/android/NewVideoPlayerActivity$19;
.super Ljava/util/TimerTask;
.source "NewVideoPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewVideoPlayerActivity;->hideUI(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$19;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    .line 872
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/NewVideoPlayerActivity$19;)Lcom/vkontakte/android/NewVideoPlayerActivity;
    .locals 1

    .prologue
    .line 872
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$19;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 873
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$19;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    new-instance v1, Lcom/vkontakte/android/NewVideoPlayerActivity$19$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$19$1;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity$19;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 876
    return-void
.end method
