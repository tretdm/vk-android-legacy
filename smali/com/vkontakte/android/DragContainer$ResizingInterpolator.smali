.class Lcom/vkontakte/android/DragContainer$ResizingInterpolator;
.super Landroid/view/animation/DecelerateInterpolator;
.source "DragContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/DragContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResizingInterpolator"
.end annotation


# instance fields
.field forward:Z

.field initial:I

.field initial2:I

.field final synthetic this$0:Lcom/vkontakte/android/DragContainer;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/DragContainer;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 104
    iput-object p1, p0, Lcom/vkontakte/android/DragContainer$ResizingInterpolator;->this$0:Lcom/vkontakte/android/DragContainer;

    invoke-direct {p0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 105
    iput v0, p0, Lcom/vkontakte/android/DragContainer$ResizingInterpolator;->initial:I

    iput v0, p0, Lcom/vkontakte/android/DragContainer$ResizingInterpolator;->initial2:I

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/DragContainer$ResizingInterpolator;->forward:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/DragContainer;Lcom/vkontakte/android/DragContainer$ResizingInterpolator;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/vkontakte/android/DragContainer$ResizingInterpolator;-><init>(Lcom/vkontakte/android/DragContainer;)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/DragContainer$ResizingInterpolator;)Lcom/vkontakte/android/DragContainer;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/vkontakte/android/DragContainer$ResizingInterpolator;->this$0:Lcom/vkontakte/android/DragContainer;

    return-object v0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 4
    .param p1, "input"    # F

    .prologue
    .line 108
    invoke-super {p0, p1}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    .line 109
    .local v0, "f":F
    iget-boolean v2, p0, Lcom/vkontakte/android/DragContainer$ResizingInterpolator;->forward:Z

    if-eqz v2, :cond_0

    .line 110
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    iget v3, p0, Lcom/vkontakte/android/DragContainer$ResizingInterpolator;->initial:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 112
    .local v1, "n":I
    iget-object v2, p0, Lcom/vkontakte/android/DragContainer$ResizingInterpolator;->this$0:Lcom/vkontakte/android/DragContainer;

    iget-object v2, v2, Lcom/vkontakte/android/DragContainer;->l:Lcom/vkontakte/android/DragContainer$OnDragListener;

    invoke-interface {v2, v1}, Lcom/vkontakte/android/DragContainer$OnDragListener;->setX(I)V

    .line 113
    iget-object v2, p0, Lcom/vkontakte/android/DragContainer$ResizingInterpolator;->this$0:Lcom/vkontakte/android/DragContainer;

    iget-object v3, p0, Lcom/vkontakte/android/DragContainer$ResizingInterpolator;->this$0:Lcom/vkontakte/android/DragContainer;

    invoke-virtual {v3}, Lcom/vkontakte/android/DragContainer;->getWidth()I

    move-result v3

    sub-int/2addr v3, v1

    iput v3, v2, Lcom/vkontakte/android/DragContainer;->offset:I

    .line 114
    iget-object v2, p0, Lcom/vkontakte/android/DragContainer$ResizingInterpolator;->this$0:Lcom/vkontakte/android/DragContainer;

    new-instance v3, Lcom/vkontakte/android/DragContainer$ResizingInterpolator$1;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/DragContainer$ResizingInterpolator$1;-><init>(Lcom/vkontakte/android/DragContainer$ResizingInterpolator;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/DragContainer;->post(Ljava/lang/Runnable;)Z

    .line 127
    :goto_0
    return v0

    .line 119
    .end local v1    # "n":I
    :cond_0
    iget v2, p0, Lcom/vkontakte/android/DragContainer$ResizingInterpolator;->initial2:I

    int-to-float v2, v2

    iget v3, p0, Lcom/vkontakte/android/DragContainer$ResizingInterpolator;->initial:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 121
    .restart local v1    # "n":I
    iget-object v2, p0, Lcom/vkontakte/android/DragContainer$ResizingInterpolator;->this$0:Lcom/vkontakte/android/DragContainer;

    iget-object v2, v2, Lcom/vkontakte/android/DragContainer;->l:Lcom/vkontakte/android/DragContainer$OnDragListener;

    invoke-interface {v2, v1}, Lcom/vkontakte/android/DragContainer$OnDragListener;->setX(I)V

    .line 122
    iget-object v2, p0, Lcom/vkontakte/android/DragContainer$ResizingInterpolator;->this$0:Lcom/vkontakte/android/DragContainer;

    iget-object v3, p0, Lcom/vkontakte/android/DragContainer$ResizingInterpolator;->this$0:Lcom/vkontakte/android/DragContainer;

    invoke-virtual {v3}, Lcom/vkontakte/android/DragContainer;->getWidth()I

    move-result v3

    sub-int/2addr v3, v1

    iput v3, v2, Lcom/vkontakte/android/DragContainer;->offset:I

    .line 124
    iget-object v2, p0, Lcom/vkontakte/android/DragContainer$ResizingInterpolator;->this$0:Lcom/vkontakte/android/DragContainer;

    invoke-virtual {v2}, Lcom/vkontakte/android/DragContainer;->invalidate()V

    goto :goto_0
.end method
