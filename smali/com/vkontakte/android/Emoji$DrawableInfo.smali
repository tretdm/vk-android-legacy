.class Lcom/vkontakte/android/Emoji$DrawableInfo;
.super Ljava/lang/Object;
.source "Emoji.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/Emoji;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DrawableInfo"
.end annotation


# instance fields
.field page:I

.field rect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;I)V
    .locals 0
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "p"    # I

    .prologue
    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    iput-object p1, p0, Lcom/vkontakte/android/Emoji$DrawableInfo;->rect:Landroid/graphics/Rect;

    .line 276
    iput p2, p0, Lcom/vkontakte/android/Emoji$DrawableInfo;->page:I

    .line 277
    return-void
.end method
