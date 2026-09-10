.class public Lcom/vkontakte/android/ui/StateShadowTextView;
.super Landroid/widget/TextView;
.source "StateShadowTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/ui/StateShadowTextView$ShadowLayer;
    }
.end annotation


# instance fields
.field private currentState:[I

.field private shDisabled:Lcom/vkontakte/android/ui/StateShadowTextView$ShadowLayer;

.field private shNormal:Lcom/vkontakte/android/ui/StateShadowTextView$ShadowLayer;

.field private shPressed:Lcom/vkontakte/android/ui/StateShadowTextView$ShadowLayer;

.field private shSelected:Lcom/vkontakte/android/ui/StateShadowTextView$ShadowLayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 15
    iput-object v1, p0, Lcom/vkontakte/android/ui/StateShadowTextView;->currentState:[I

    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/vkontakte/android/ui/StateShadowTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/ui/StateShadowTextView;->currentState:[I

    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/vkontakte/android/ui/StateShadowTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/ui/StateShadowTextView;->currentState:[I

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/vkontakte/android/ui/StateShadowTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method private getShadow([I)Lcom/vkontakte/android/ui/StateShadowTextView$ShadowLayer;
    .locals 1
    .param p1, "ds"    # [I

    .prologue
    .line 56
    const v0, 0x101009e

    invoke-direct {p0, v0, p1}, Lcom/vkontakte/android/ui/StateShadowTextView;->inArray(I[I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/StateShadowTextView;->shDisabled:Lcom/vkontakte/android/ui/StateShadowTextView$ShadowLayer;

    .line 59
    :goto_0
    return-object v0

    .line 57
    :cond_0
    const v0, 0x10100a7

    invoke-direct {p0, v0, p1}, Lcom/vkontakte/android/ui/StateShadowTextView;->inArray(I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/ui/StateShadowTextView;->shPressed:Lcom/vkontakte/android/ui/StateShadowTextView$ShadowLayer;

    goto :goto_0

    .line 58
    :cond_1
    const v0, 0x10100a1

    invoke-direct {p0, v0, p1}, Lcom/vkontakte/android/ui/StateShadowTextView;->inArray(I[I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/ui/StateShadowTextView;->shSelected:Lcom/vkontakte/android/ui/StateShadowTextView$ShadowLayer;

    goto :goto_0

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/ui/StateShadowTextView;->shNormal:Lcom/vkontakte/android/ui/StateShadowTextView$ShadowLayer;

    goto :goto_0
.end method

.method private inArray(I[I)Z
    .locals 4
    .param p1, "i"    # I
    .param p2, "a"    # [I

    .prologue
    const/4 v1, 0x0

    .line 63
    array-length v3, p2

    move v2, v1

    :goto_0
    if-lt v2, v3, :cond_0

    .line 64
    :goto_1
    return v1

    .line 63
    :cond_0
    aget v0, p2, v2

    .local v0, "aa":I
    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    if-eqz p2, :cond_3

    .line 34
    sget-object v1, Lcom/vkontakte/android/R$styleable;->StateShadowTextView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 35
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/vkontakte/android/ui/StateShadowTextView$ShadowLayer;

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/ui/StateShadowTextView$ShadowLayer;-><init>(Lcom/vkontakte/android/ui/StateShadowTextView;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/vkontakte/android/ui/StateShadowTextView;->shNormal:Lcom/vkontakte/android/ui/StateShadowTextView$ShadowLayer;

    .line 36
    :cond_0
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/vkontakte/android/ui/StateShadowTextView$ShadowLayer;

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/ui/StateShadowTextView$ShadowLayer;-><init>(Lcom/vkontakte/android/ui/StateShadowTextView;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/vkontakte/android/ui/StateShadowTextView;->shPressed:Lcom/vkontakte/android/ui/StateShadowTextView$ShadowLayer;

    .line 37
    :cond_1
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/vkontakte/android/ui/StateShadowTextView$ShadowLayer;

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/ui/StateShadowTextView$ShadowLayer;-><init>(Lcom/vkontakte/android/ui/StateShadowTextView;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/vkontakte/android/ui/StateShadowTextView;->shSelected:Lcom/vkontakte/android/ui/StateShadowTextView$ShadowLayer;

    .line 38
    :cond_2
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/vkontakte/android/ui/StateShadowTextView$ShadowLayer;

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/ui/StateShadowTextView$ShadowLayer;-><init>(Lcom/vkontakte/android/ui/StateShadowTextView;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/vkontakte/android/ui/StateShadowTextView;->shDisabled:Lcom/vkontakte/android/ui/StateShadowTextView$ShadowLayer;

    .line 40
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_3
    iget-object v1, p0, Lcom/vkontakte/android/ui/StateShadowTextView;->shNormal:Lcom/vkontakte/android/ui/StateShadowTextView$ShadowLayer;

    if-nez v1, :cond_4

    new-instance v1, Lcom/vkontakte/android/ui/StateShadowTextView$ShadowLayer;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ui/StateShadowTextView$ShadowLayer;-><init>(Lcom/vkontakte/android/ui/StateShadowTextView;)V

    iput-object v1, p0, Lcom/vkontakte/android/ui/StateShadowTextView;->shNormal:Lcom/vkontakte/android/ui/StateShadowTextView$ShadowLayer;

    .line 41
    :cond_4
    iget-object v1, p0, Lcom/vkontakte/android/ui/StateShadowTextView;->shPressed:Lcom/vkontakte/android/ui/StateShadowTextView$ShadowLayer;

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/vkontakte/android/ui/StateShadowTextView;->shNormal:Lcom/vkontakte/android/ui/StateShadowTextView$ShadowLayer;

    iput-object v1, p0, Lcom/vkontakte/android/ui/StateShadowTextView;->shPressed:Lcom/vkontakte/android/ui/StateShadowTextView$ShadowLayer;

    .line 42
    :cond_5
    iget-object v1, p0, Lcom/vkontakte/android/ui/StateShadowTextView;->shSelected:Lcom/vkontakte/android/ui/StateShadowTextView$ShadowLayer;

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/vkontakte/android/ui/StateShadowTextView;->shPressed:Lcom/vkontakte/android/ui/StateShadowTextView$ShadowLayer;

    iput-object v1, p0, Lcom/vkontakte/android/ui/StateShadowTextView;->shSelected:Lcom/vkontakte/android/ui/StateShadowTextView$ShadowLayer;

    .line 43
    :cond_6
    iget-object v1, p0, Lcom/vkontakte/android/ui/StateShadowTextView;->shDisabled:Lcom/vkontakte/android/ui/StateShadowTextView$ShadowLayer;

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/vkontakte/android/ui/StateShadowTextView;->shNormal:Lcom/vkontakte/android/ui/StateShadowTextView$ShadowLayer;

    iput-object v1, p0, Lcom/vkontakte/android/ui/StateShadowTextView;->shDisabled:Lcom/vkontakte/android/ui/StateShadowTextView$ShadowLayer;

    .line 45
    :cond_7
    return-void
.end method

.method private updateState([I)V
    .locals 5
    .param p1, "newState"    # [I

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ui/StateShadowTextView;->getShadow([I)Lcom/vkontakte/android/ui/StateShadowTextView$ShadowLayer;

    move-result-object v0

    .line 50
    .local v0, "sl":Lcom/vkontakte/android/ui/StateShadowTextView$ShadowLayer;
    if-nez v0, :cond_0

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    iget v1, v0, Lcom/vkontakte/android/ui/StateShadowTextView$ShadowLayer;->radius:F

    iget v2, v0, Lcom/vkontakte/android/ui/StateShadowTextView$ShadowLayer;->dx:F

    iget v3, v0, Lcom/vkontakte/android/ui/StateShadowTextView$ShadowLayer;->dy:F

    iget v4, v0, Lcom/vkontakte/android/ui/StateShadowTextView$ShadowLayer;->color:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/vkontakte/android/ui/StateShadowTextView;->setShadowLayer(FFFI)V

    .line 52
    iput-object p1, p0, Lcom/vkontakte/android/ui/StateShadowTextView;->currentState:[I

    goto :goto_0
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/StateShadowTextView;->getDrawableState()[I

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/ui/StateShadowTextView;->currentState:[I

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/StateShadowTextView;->getDrawableState()[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vkontakte/android/ui/StateShadowTextView;->updateState([I)V

    .line 71
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 72
    return-void
.end method
