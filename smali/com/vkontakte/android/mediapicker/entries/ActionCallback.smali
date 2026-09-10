.class public abstract Lcom/vkontakte/android/mediapicker/entries/ActionCallback;
.super Ljava/lang/Object;
.source "ActionCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static uiHandler:Landroid/os/Handler;


# instance fields
.field private handler:Landroid/os/Handler;

.field private hasExecuted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/vkontakte/android/mediapicker/entries/ActionCallback;->uiHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    .local p0, "this":Lcom/vkontakte/android/mediapicker/entries/ActionCallback;, "Lcom/vkontakte/android/mediapicker/entries/ActionCallback<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public exec(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lcom/vkontakte/android/mediapicker/entries/ActionCallback;, "Lcom/vkontakte/android/mediapicker/entries/ActionCallback<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/mediapicker/entries/ActionCallback;->hasExecuted:Z

    .line 34
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/mediapicker/entries/ActionCallback;->run(Ljava/lang/Object;)V

    .line 35
    return-void
.end method

.method public getHasExecuted()Z
    .locals 1

    .prologue
    .line 70
    .local p0, "this":Lcom/vkontakte/android/mediapicker/entries/ActionCallback;, "Lcom/vkontakte/android/mediapicker/entries/ActionCallback<TT;>;"
    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/entries/ActionCallback;->hasExecuted:Z

    return v0
.end method

.method public post(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lcom/vkontakte/android/mediapicker/entries/ActionCallback;, "Lcom/vkontakte/android/mediapicker/entries/ActionCallback<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/mediapicker/entries/ActionCallback;->hasExecuted:Z

    .line 41
    sget-object v0, Lcom/vkontakte/android/mediapicker/entries/ActionCallback;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/vkontakte/android/mediapicker/entries/ActionCallback$1;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/mediapicker/entries/ActionCallback$1;-><init>(Lcom/vkontakte/android/mediapicker/entries/ActionCallback;Ljava/lang/Object;)V

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 49
    return-void
.end method

.method public postBack(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/vkontakte/android/mediapicker/entries/ActionCallback;, "Lcom/vkontakte/android/mediapicker/entries/ActionCallback<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/mediapicker/entries/ActionCallback;->hasExecuted:Z

    .line 55
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/ActionCallback;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/ActionCallback;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/vkontakte/android/mediapicker/entries/ActionCallback$2;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/mediapicker/entries/ActionCallback$2;-><init>(Lcom/vkontakte/android/mediapicker/entries/ActionCallback;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 66
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/mediapicker/entries/ActionCallback;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public abstract run(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
