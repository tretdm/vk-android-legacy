.class public abstract Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;
.super Ljava/lang/Object;
.source "CancellableRunnable.java"


# instance fields
.field private isCanceled:Z

.field private runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;->isCanceled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;

    .prologue
    .line 6
    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;->isCanceled:Z

    return v0
.end method

.method static synthetic access$002(Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;
    .param p1, "x1"    # Z

    .prologue
    .line 6
    iput-boolean p1, p0, Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;->isCanceled:Z

    return p1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;->isCanceled:Z

    .line 15
    return-void
.end method

.method public getIsCanceled()Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;->isCanceled:Z

    return v0
.end method

.method public abstract run()V
.end method

.method public toOnceRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;->runnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable$1;-><init>(Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;)V

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;->runnable:Ljava/lang/Runnable;

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;->runnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public toRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;->runnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable$2;-><init>(Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;)V

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;->runnable:Ljava/lang/Runnable;

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;->runnable:Ljava/lang/Runnable;

    return-object v0
.end method
