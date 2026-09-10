.class Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable$2;
.super Ljava/lang/Object;
.source "CancellableRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;->toRunnable()Ljava/lang/Runnable;
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
    .line 50
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable$2;->this$0:Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable$2;->this$0:Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;->access$000(Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable$2;->this$0:Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;->run()V

    .line 56
    :cond_0
    return-void
.end method
