.class Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder$DividerView;
.super Landroid/view/View;
.source "AlbumViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DividerView"
.end annotation


# instance fields
.field private hasDivider:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder$DividerView;->hasDivider:Z

    .line 35
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder$DividerView;->hasDivider:Z

    if-eqz v0, :cond_0

    const v0, -0xc4c4c5

    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 46
    return-void

    .line 45
    :cond_0
    const v0, -0xe5e5e6

    goto :goto_0
.end method

.method public setHasDivider(Z)V
    .locals 0
    .param p1, "hasDivider"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder$DividerView;->hasDivider:Z

    .line 40
    return-void
.end method
