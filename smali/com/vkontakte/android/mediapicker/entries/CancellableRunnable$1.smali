.class Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable$1;
.super Ljava/lang/Object;
.source "CancellableRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;->toOnceRunnable()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable$1;->this$0:Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable$1;->this$0:Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;->access$000(Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable$1;->this$0:Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;->access$002(Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;Z)Z

    .line 36
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable$1;->this$0:Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;->run()V

    .line 38
    :cond_0
    return-void
.end method
