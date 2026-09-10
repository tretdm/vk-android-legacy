.class Lcom/vkontakte/android/AudioPlayerView$3$1;
.super Ljava/lang/Object;
.source "AudioPlayerView.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioPlayerView$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/AudioPlayerView$3;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioPlayerView$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerView$3$1;->this$1:Lcom/vkontakte/android/AudioPlayerView$3;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerView$3$1;->this$1:Lcom/vkontakte/android/AudioPlayerView$3;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerView$3;->access$0(Lcom/vkontakte/android/AudioPlayerView$3;)Lcom/vkontakte/android/AudioPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/AudioPlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/vkontakte/android/AudioListActivity;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerView$3$1;->this$1:Lcom/vkontakte/android/AudioPlayerView$3;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerView$3;->access$0(Lcom/vkontakte/android/AudioPlayerView$3;)Lcom/vkontakte/android/AudioPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/AudioPlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/vkontakte/android/AudioPlayerActivity;

    if-eqz v0, :cond_1

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerView$3$1;->this$1:Lcom/vkontakte/android/AudioPlayerView$3;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerView$3;->access$0(Lcom/vkontakte/android/AudioPlayerView$3;)Lcom/vkontakte/android/AudioPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/AudioPlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 143
    :goto_0
    return v0

    .line 141
    :cond_1
    :try_start_0
    sget-object v0, Lcom/vkontakte/android/AudioListActivity;->lastInstance:Lcom/vkontakte/android/AudioListActivity;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/AudioListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    const/4 v0, 0x1

    goto :goto_0
.end method
