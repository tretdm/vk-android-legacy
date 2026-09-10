.class Lcom/vkontakte/android/AudioPlayerActivity$15$2$1;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioPlayerActivity$15$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vkontakte/android/AudioPlayerActivity$15$2;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioPlayerActivity$15$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerActivity$15$2$1;->this$2:Lcom/vkontakte/android/AudioPlayerActivity$15$2;

    .line 660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity$15$2$1;->this$2:Lcom/vkontakte/android/AudioPlayerActivity$15$2;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerActivity$15$2;->access$0(Lcom/vkontakte/android/AudioPlayerActivity$15$2;)Lcom/vkontakte/android/AudioPlayerActivity$15;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerActivity$15;->access$0(Lcom/vkontakte/android/AudioPlayerActivity$15;)Lcom/vkontakte/android/AudioPlayerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/AudioPlayerActivity;->forceUpdateCover()V

    .line 663
    return-void
.end method
