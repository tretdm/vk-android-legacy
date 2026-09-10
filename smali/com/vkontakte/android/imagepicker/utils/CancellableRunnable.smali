.class public abstract Lcom/vkontakte/android/imagepicker/utils/CancellableRunnable;
.super Ljava/lang/Object;
.source "CancellableRunnable.java"


# instance fields
.field private isCanceled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/imagepicker/utils/CancellableRunnable;->isCanceled:Z

    .line 6
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/imagepicker/utils/CancellableRunnable;)Z
    .locals 1

    .prologue
    .line 8
    iget-boolean v0, p0, Lcom/vkontakte/android/imagepicker/utils/CancellableRunnable;->isCanceled:Z

    return v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/imagepicker/utils/CancellableRunnable;->isCanceled:Z

    .line 15
    return-void
.end method

.method public getIsCanceled()Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/vkontakte/android/imagepicker/utils/CancellableRunnable;->isCanceled:Z

    return v0
.end method

.method public abstract run()V
.end method

.method public toRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/vkontakte/android/imagepicker/utils/CancellableRunnable$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/imagepicker/utils/CancellableRunnable$1;-><init>(Lcom/vkontakte/android/imagepicker/utils/CancellableRunnable;)V

    return-object v0
.end method
