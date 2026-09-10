.class Lcom/vkontakte/android/NewVideoPlayerActivity$15$1;
.super Ljava/lang/Object;
.source "NewVideoPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewVideoPlayerActivity$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/NewVideoPlayerActivity$15;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewVideoPlayerActivity$15;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$15$1;->this$1:Lcom/vkontakte/android/NewVideoPlayerActivity$15;

    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$15$1;->this$1:Lcom/vkontakte/android/NewVideoPlayerActivity$15;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity$15;->access$0(Lcom/vkontakte/android/NewVideoPlayerActivity$15;)Lcom/vkontakte/android/NewVideoPlayerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$8(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    .line 436
    return-void
.end method
