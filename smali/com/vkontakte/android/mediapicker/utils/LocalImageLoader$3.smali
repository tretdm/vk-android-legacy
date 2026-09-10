.class Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$3;
.super Ljava/lang/Object;
.source "LocalImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->dispatchThumbnail(Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;

.field private final synthetic val$runnable:Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$3;->this$0:Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;

    iput-object p2, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$3;->val$runnable:Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$3;->this$0:Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->access$3(Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;)V

    .line 163
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$3;->this$0:Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->access$1(Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$3;->val$runnable:Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 164
    return-void
.end method
