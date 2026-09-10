.class Lcom/vkontakte/android/AudioPlayerView$12;
.super Ljava/lang/Object;
.source "AudioPlayerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioPlayerView;->enableBroadcast(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/AudioPlayerView;

.field private final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioPlayerView;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerView$12;->this$0:Lcom/vkontakte/android/AudioPlayerView;

    iput-boolean p2, p0, Lcom/vkontakte/android/AudioPlayerView$12;->val$enable:Z

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerView$12;->this$0:Lcom/vkontakte/android/AudioPlayerView;

    const v1, 0x7f060030

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/vkontakte/android/AudioPlayerView$12;->val$enable:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 319
    return-void
.end method
