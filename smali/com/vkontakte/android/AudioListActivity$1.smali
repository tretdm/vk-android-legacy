.class Lcom/vkontakte/android/AudioListActivity$1;
.super Ljava/lang/Object;
.source "AudioListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/AudioListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/AudioListActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioListActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/AudioListActivity$1;->this$0:Lcom/vkontakte/android/AudioListActivity;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/vkontakte/android/AudioListActivity$1;->this$0:Lcom/vkontakte/android/AudioListActivity;

    invoke-static {v0}, Lcom/vkontakte/android/AudioListActivity;->access$1(Lcom/vkontakte/android/AudioListActivity;)Lcom/vkontakte/android/ui/SlidingDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/SlidingDrawer;->getContent()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/AudioPlayerView;

    invoke-virtual {v0}, Lcom/vkontakte/android/AudioPlayerView;->register()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/vkontakte/android/AudioListActivity$1;->this$0:Lcom/vkontakte/android/AudioListActivity;

    invoke-static {v0}, Lcom/vkontakte/android/AudioListActivity;->access$1(Lcom/vkontakte/android/AudioListActivity;)Lcom/vkontakte/android/ui/SlidingDrawer;

    move-result-object v0

    const-wide/16 v1, 0x19

    invoke-virtual {v0, p0, v1, v2}, Lcom/vkontakte/android/ui/SlidingDrawer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 87
    :cond_0
    return-void
.end method
