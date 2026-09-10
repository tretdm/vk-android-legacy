.class Lcom/vkontakte/android/AudioPlayerActivity$6;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioPlayerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/AudioPlayerActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioPlayerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerActivity$6;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity$6;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerActivity;->access$2(Lcom/vkontakte/android/AudioPlayerActivity;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    :goto_0
    return-void

    .line 185
    :cond_0
    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v0}, Lcom/vkontakte/android/AudioPlayerService;->prevTrack()V

    goto :goto_0
.end method
