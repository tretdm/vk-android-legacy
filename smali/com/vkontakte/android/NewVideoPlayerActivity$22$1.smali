.class Lcom/vkontakte/android/NewVideoPlayerActivity$22$1;
.super Ljava/lang/Object;
.source "NewVideoPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewVideoPlayerActivity$22;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/NewVideoPlayerActivity$22;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewVideoPlayerActivity$22;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$22$1;->this$1:Lcom/vkontakte/android/NewVideoPlayerActivity$22;

    .line 776
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 777
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$22$1;->this$1:Lcom/vkontakte/android/NewVideoPlayerActivity$22;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity$22;->access$0(Lcom/vkontakte/android/NewVideoPlayerActivity$22;)Lcom/vkontakte/android/NewVideoPlayerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$10(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    .line 778
    return-void
.end method
