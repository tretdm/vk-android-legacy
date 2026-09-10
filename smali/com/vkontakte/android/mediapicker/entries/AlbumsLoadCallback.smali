.class public abstract Lcom/vkontakte/android/mediapicker/entries/AlbumsLoadCallback;
.super Ljava/lang/Object;
.source "AlbumsLoadCallback.java"


# instance fields
.field public bindedView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/entries/AlbumsLoadCallback;->bindedView:Landroid/view/View;

    .line 15
    return-void
.end method


# virtual methods
.method public post(Ljava/lang/Runnable;I)V
    .locals 3
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "delay"    # I

    .prologue
    .line 19
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/AlbumsLoadCallback;->bindedView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/AlbumsLoadCallback;->bindedView:Landroid/view/View;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 21
    :cond_0
    return-void
.end method

.method public abstract prepareListAnimation()V
.end method
