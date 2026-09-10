.class Lcom/vkontakte/android/AudioPlayerActivity$20;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioPlayerActivity;->updateLyrics()V
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
    .line 839
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerActivity$20;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 841
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity$20;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/AudioPlayerActivity;->updateLyrics()V

    .line 842
    return-void
.end method
