.class public abstract Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;
.super Ljava/lang/Object;
.source "OnClickTouchListener.java"


# instance fields
.field private dropClick:Z

.field private isPressed:Z

.field private preventAfterPositionChanged:Z

.field private preventCancelBeforeCompleted:Z

.field private requiredApiVersion:I

.field private touchUpExecuted:Z

.field private viewBound:I

.field private viewHeight:I

.field private viewSize:I

.field private viewWidth:I

.field private viewX:I

.field private viewY:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v0, p0, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;->isPressed:Z

    .line 36
    iput-boolean v0, p0, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;->preventCancelBeforeCompleted:Z

    iput-boolean v0, p0, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;->touchUpExecuted:Z

    iput-boolean v0, p0, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;->preventAfterPositionChanged:Z

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;->requiredApiVersion:I

    .line 14
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;->onTouched(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;)Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;->touchUpExecuted:Z

    return v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;Z)V
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;->touchUpExecuted:Z

    return-void
.end method

.method private final canExecuteStateListeners()Z
    .locals 2

    .prologue
    .line 62
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v1, p0, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;->requiredApiVersion:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final onTouched(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 87
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    if-le v6, v5, :cond_1

    .line 215
    :cond_0
    :goto_0
    return v4

    .line 90
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 92
    .local v0, "action":I
    if-nez v0, :cond_2

    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iput v6, p0, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;->viewWidth:I

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iput v6, p0, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;->viewHeight:I

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v6

    iput v6, p0, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;->viewX:I

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v6

    iput v6, p0, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;->viewY:I

    .line 98
    iget v6, p0, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;->viewWidth:I

    iget v7, p0, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;->viewHeight:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;->viewSize:I

    .line 102
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x9

    if-lt v6, v7, :cond_6

    .line 103
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getTouchMinor()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 107
    .local v1, "tap":F
    :goto_1
    mul-float v6, v1, v8

    iget v7, p0, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;->viewSize:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_7

    .end local v1    # "tap":F
    :goto_2
    float-to-int v6, v1

    iput v6, p0, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;->viewBound:I

    .line 110
    :cond_2
    iget-boolean v6, p0, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;->preventAfterPositionChanged:Z

    if-eqz v6, :cond_4

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v6

    iget v7, p0, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;->viewX:I

    if-ne v6, v7, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v6

    iget v7, p0, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;->viewY:I

    if-eq v6, v7, :cond_4

    .line 114
    :cond_3
    iput-boolean v5, p0, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;->dropClick:Z

    .line 118
    :cond_4
    iget-boolean v6, p0, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;->dropClick:Z

    if-eqz v6, :cond_8

    .line 120
    if-ne v0, v5, :cond_5

    .line 121
    iput-boolean v4, p0, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;->dropClick:Z

    .line 123
    :cond_5
    if-nez v0, :cond_0

    move v4, v5

    goto :goto_0

    .line 105
    :cond_6
    iget v6, p0, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;->viewSize:I

    int-to-float v6, v6

    div-float v1, v6, v8

    .restart local v1    # "tap":F
    goto :goto_1

    .line 107
    :cond_7
    iget v6, p0, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;->viewSize:I

    int-to-float v1, v6

    goto :goto_2

    .line 126
    .end local v1    # "tap":F
    :cond_8
    packed-switch v0, :pswitch_data_0

    .line 215
    :cond_9
    :goto_3
    if-nez v0, :cond_0

    move v4, v5

    goto :goto_0

    .line 130
    :pswitch_0
    iget-boolean v6, p0, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;->isPressed:Z

    if-nez v6, :cond_9

    .line 132
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;->canExecuteStateListeners()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 133
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;->onTapStarted(Landroid/view/View;)V

    .line 135
    :cond_a
    iput-boolean v5, p0, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;->isPressed:Z

    goto :goto_3

    .line 143
    :pswitch_1
    iget-boolean v6, p0, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;->isPressed:Z

    if-eqz v6, :cond_9

    .line 145
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;->canExecuteStateListeners()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 146
    new-instance v6, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener$2;

    invoke-direct {v6, p0, p1}, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener$2;-><init>(Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;Landroid/view/View;)V

    .line 160
    const-wide/16 v7, 0x64

    .line 146
    invoke-virtual {p1, v6, v7, v8}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 162
    :cond_b
    iput-boolean v4, p0, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;->isPressed:Z

    goto :goto_3

    .line 170
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v2, v6

    .line 171
    .local v2, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v3, v6

    .line 173
    .local v3, "y":I
    iget v6, p0, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;->viewBound:I

    neg-int v6, v6

    if-lt v2, v6, :cond_c

    iget v6, p0, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;->viewBound:I

    neg-int v6, v6

    if-lt v3, v6, :cond_c

    .line 174
    iget v6, p0, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;->viewWidth:I

    iget v7, p0, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;->viewBound:I

    add-int/2addr v6, v7

    if-gt v2, v6, :cond_c

    .line 175
    iget v6, p0, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;->viewHeight:I

    iget v7, p0, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;->viewBound:I

    add-int/2addr v6, v7

    if-le v3, v6, :cond_e

    .line 177
    :cond_c
    iget-boolean v6, p0, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;->isPressed:Z

    if-eqz v6, :cond_9

    .line 179
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;->canExecuteStateListeners()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 180
    invoke-virtual {p0, p1, v4}, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;->onTapCanceled(Landroid/view/View;Z)V

    .line 182
    :cond_d
    iput-boolean v4, p0, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;->isPressed:Z

    goto :goto_3

    .line 187
    :cond_e
    iget-boolean v6, p0, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;->isPressed:Z

    if-nez v6, :cond_9

    .line 189
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;->canExecuteStateListeners()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 190
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;->onTapStarted(Landroid/view/View;)V

    .line 192
    :cond_f
    iput-boolean v5, p0, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;->isPressed:Z

    goto :goto_3

    .line 201
    .end local v2    # "x":I
    .end local v3    # "y":I
    :pswitch_3
    iget-boolean v6, p0, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;->isPressed:Z

    if-eqz v6, :cond_9

    .line 203
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;->canExecuteStateListeners()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 204
    invoke-virtual {p0, p1, v5}, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;->onTapCanceled(Landroid/view/View;Z)V

    .line 206
    :cond_10
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;->onTapCompleted(Landroid/view/View;)V

    .line 208
    iput-boolean v4, p0, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;->isPressed:Z

    goto :goto_3

    .line 126
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public abstract onTapCanceled(Landroid/view/View;Z)V
.end method

.method public abstract onTapCompleted(Landroid/view/View;)V
.end method

.method public abstract onTapStarted(Landroid/view/View;)V
.end method

.method public final setCancelOnViewMove(Z)Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;
    .locals 0
    .param p1, "prevent"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;->preventAfterPositionChanged:Z

    .line 50
    return-object p0
.end method

.method public final setPreventCancelBeforeCompleted(Z)Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;
    .locals 0
    .param p1, "prevent"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;->preventCancelBeforeCompleted:Z

    .line 57
    return-object p0
.end method

.method public final setRequiredApiVersionForStateListeners(I)Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;
    .locals 0
    .param p1, "apiVersion"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;->requiredApiVersion:I

    .line 43
    return-object p0
.end method

.method public final toOnTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener$1;-><init>(Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;)V

    .line 77
    .local v0, "onTouchListener":Landroid/view/View$OnTouchListener;
    return-object v0
.end method
