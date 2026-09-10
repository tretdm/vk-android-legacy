.class public Lcom/vkontakte/android/ui/PaddingColorDrawable;
.super Landroid/graphics/drawable/ColorDrawable;
.source "PaddingColorDrawable.java"


# instance fields
.field private pad:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 12
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "color"    # I
    .param p2, "padding"    # I

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 16
    iput p2, p0, Lcom/vkontakte/android/ui/PaddingColorDrawable;->pad:I

    .line 17
    return-void
.end method


# virtual methods
.method public setBounds(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 20
    iget v0, p0, Lcom/vkontakte/android/ui/PaddingColorDrawable;->pad:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/vkontakte/android/ui/PaddingColorDrawable;->pad:I

    sub-int v1, p3, v1

    invoke-super {p0, v0, p2, v1, p4}, Landroid/graphics/drawable/ColorDrawable;->setBounds(IIII)V

    .line 21
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 24
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 25
    .local v0, "r":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/vkontakte/android/ui/PaddingColorDrawable;->pad:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 26
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/vkontakte/android/ui/PaddingColorDrawable;->pad:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 27
    invoke-super {p0, v0}, Landroid/graphics/drawable/ColorDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 28
    return-void
.end method
