.class public abstract Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;
.super Ljava/lang/Object;
.source "OnClickTouchListener.java"


# static fields
.field private static final DELAY_BEFORE_SELECTION:I = 0xaf


# instance fields
.field private currentView:Landroid/view/View;

.field private delayBeforeDown:Z

.field private dropClick:Z

.field private dropTouch:Z

.field private gestureDetector:Landroid/view/GestureDetector;

.field private isPressed:Z

.field private onTouchListener:Landroid/view/View$OnTouchListener;

.field private preventAfterPositionChanged:Z

.field private preventCancelBeforeCompleted:Z

.field private requiredApiVersion:I

.field private touchDowner:Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;

.field private touchUpExecuted:Z

.field private viewBound:I

.field private viewHeight:I

.field private viewSize:I

.field private viewWidth:I

.field private viewX:I

.field private viewY:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean v1, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->isPressed:Z

    .line 40
    iput-boolean v1, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->preventCancelBeforeCompleted:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->touchUpExecuted:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->preventAfterPositionChanged:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->delayBeforeDown:Z

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->requiredApiVersion:I

    .line 186
    iput-boolean v1, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->dropTouch:Z

    .line 14
    return-void
.end method

.method static synthetic access$000(Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/view/MotionEvent;

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->onTouched(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->canExecuteStateListeners()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;

    .prologue
    .line 10
    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->touchUpExecuted:Z

    return v0
.end method

.method static synthetic access$202(Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;
    .param p1, "x1"    # Z

    .prologue
    .line 10
    iput-boolean p1, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->touchUpExecuted:Z

    return p1
.end method

.method private final canExecuteStateListeners()Z
    .locals 2

    .prologue
    .line 82
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v1, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->requiredApiVersion:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelSelection(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 158
    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->isPressed:Z

    if-eqz v0, :cond_1

    .line 160
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->canExecuteStateListeners()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-direct {p0, p1, v3}, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->cancelTouchDowner(Landroid/view/View;Z)V

    .line 164
    new-instance v0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener$3;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener$3;-><init>(Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;Landroid/view/View;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 182
    :cond_0
    iput-boolean v3, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->isPressed:Z

    .line 184
    :cond_1
    return-void
.end method

.method private cancelTouchDowner(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "execute"    # Z

    .prologue
    .line 117
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->touchDowner:Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->touchDowner:Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;->toOnceRunnable()Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 121
    if-eqz p2, :cond_0

    .line 122
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->touchDowner:Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;->toOnceRunnable()Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->touchDowner:Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;->cancel()V

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->touchDowner:Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;

    .line 127
    :cond_1
    return-void
.end method

.method private final onTouched(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 205
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    if-le v6, v4, :cond_1

    .line 207
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->onCanceled(Landroid/view/View;)V

    move v4, v5

    .line 344
    :cond_0
    :goto_0
    return v4

    .line 212
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 214
    .local v0, "action":I
    iget-object v6, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->gestureDetector:Landroid/view/GestureDetector;

    if-eqz v6, :cond_4

    .line 216
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->currentView:Landroid/view/View;

    .line 217
    iget-object v6, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v6, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 219
    iget-boolean v6, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->dropTouch:Z

    if-nez v6, :cond_2

    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->getIsInSelectionMode()Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v0, :cond_2

    .line 220
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->dropTouch()Z

    .line 222
    :cond_2
    iget-boolean v6, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->dropTouch:Z

    if-eqz v6, :cond_4

    .line 224
    if-eq v0, v4, :cond_3

    const/4 v6, 0x3

    if-ne v0, v6, :cond_0

    .line 226
    :cond_3
    iput-boolean v5, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->dropTouch:Z

    .line 227
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->currentView:Landroid/view/View;

    .line 229
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->leaveSelectionMode()Z

    goto :goto_0

    .line 236
    :cond_4
    if-nez v0, :cond_5

    .line 238
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iput v6, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->viewWidth:I

    .line 239
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iput v6, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->viewHeight:I

    .line 240
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v6

    iput v6, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->viewX:I

    .line 241
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v6

    iput v6, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->viewY:I

    .line 242
    iget v6, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->viewWidth:I

    iget v7, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->viewHeight:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->viewSize:I

    .line 246
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x9

    if-lt v6, v7, :cond_9

    .line 247
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getTouchMinor()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 251
    .local v1, "tap":F
    :goto_1
    mul-float v6, v1, v8

    iget v7, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->viewSize:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_a

    .end local v1    # "tap":F
    :goto_2
    float-to-int v6, v1

    iput v6, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->viewBound:I

    .line 254
    :cond_5
    iget-boolean v6, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->preventAfterPositionChanged:Z

    if-eqz v6, :cond_7

    .line 256
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v6

    iget v7, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->viewX:I

    if-ne v6, v7, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v6

    iget v7, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->viewY:I

    if-eq v6, v7, :cond_7

    .line 258
    :cond_6
    iput-boolean v4, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->dropClick:Z

    .line 262
    :cond_7
    iget-boolean v6, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->dropClick:Z

    if-eqz v6, :cond_b

    .line 264
    if-ne v0, v4, :cond_8

    .line 265
    iput-boolean v5, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->dropClick:Z

    .line 267
    :cond_8
    if-eqz v0, :cond_0

    move v4, v5

    goto/16 :goto_0

    .line 249
    :cond_9
    iget v6, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->viewSize:I

    int-to-float v6, v6

    div-float v1, v6, v8

    .restart local v1    # "tap":F
    goto :goto_1

    .line 251
    :cond_a
    iget v6, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->viewSize:I

    int-to-float v1, v6

    goto :goto_2

    .line 270
    .end local v1    # "tap":F
    :cond_b
    packed-switch v0, :pswitch_data_0

    .line 344
    :cond_c
    :goto_3
    if-eqz v0, :cond_0

    move v4, v5

    goto/16 :goto_0

    .line 274
    :pswitch_0
    iget-boolean v6, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->isPressed:Z

    if-nez v6, :cond_c

    .line 276
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->canExecuteStateListeners()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 278
    invoke-direct {p0, p1}, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->postTouchDowner(Landroid/view/View;)V

    .line 281
    :cond_d
    iput-boolean v4, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->isPressed:Z

    goto :goto_3

    .line 289
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->onCanceled(Landroid/view/View;)V

    goto :goto_3

    .line 296
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v2, v6

    .line 297
    .local v2, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v3, v6

    .line 299
    .local v3, "y":I
    iget v6, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->viewBound:I

    neg-int v6, v6

    if-lt v2, v6, :cond_e

    iget v6, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->viewBound:I

    neg-int v6, v6

    if-lt v3, v6, :cond_e

    iget v6, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->viewWidth:I

    iget v7, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->viewBound:I

    add-int/2addr v6, v7

    if-gt v2, v6, :cond_e

    iget v6, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->viewHeight:I

    iget v7, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->viewBound:I

    add-int/2addr v6, v7

    if-le v3, v6, :cond_10

    .line 303
    :cond_e
    iget-boolean v6, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->isPressed:Z

    if-eqz v6, :cond_c

    .line 305
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->canExecuteStateListeners()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 306
    invoke-virtual {p0, p1, v5}, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->onTapCanceled(Landroid/view/View;Z)V

    .line 308
    :cond_f
    iput-boolean v5, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->isPressed:Z

    goto :goto_3

    .line 313
    :cond_10
    iget-boolean v6, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->isPressed:Z

    if-nez v6, :cond_c

    .line 315
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->canExecuteStateListeners()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 316
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->onTapStarted(Landroid/view/View;)V

    .line 318
    :cond_11
    iput-boolean v4, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->isPressed:Z

    goto :goto_3

    .line 327
    .end local v2    # "x":I
    .end local v3    # "y":I
    :pswitch_3
    iget-boolean v6, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->isPressed:Z

    if-eqz v6, :cond_c

    .line 329
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->canExecuteStateListeners()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 331
    invoke-direct {p0, p1, v4}, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->cancelTouchDowner(Landroid/view/View;Z)V

    .line 332
    invoke-virtual {p0, p1, v4}, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->onTapCanceled(Landroid/view/View;Z)V

    .line 335
    :cond_12
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->onTapCompleted(Landroid/view/View;)V

    .line 337
    iput-boolean v5, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->isPressed:Z

    goto :goto_3

    .line 270
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private postTouchDowner(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->touchDowner:Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->touchDowner:Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;->cancel()V

    .line 136
    :cond_0
    new-instance v0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener$2;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener$2;-><init>(Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;Landroid/view/View;)V

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->touchDowner:Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;

    .line 146
    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->delayBeforeDown:Z

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->touchDowner:Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;->toOnceRunnable()Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0xaf

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 154
    :goto_0
    return-void

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->touchDowner:Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;->toOnceRunnable()Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method


# virtual methods
.method public dropTouch()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->dropTouch:Z

    if-nez v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->currentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->onCanceled(Landroid/view/View;)V

    .line 193
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->dropTouch:Z

    return v0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->currentView:Landroid/view/View;

    return-object v0
.end method

.method protected onCanceled(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->cancelSelection(Landroid/view/View;)V

    .line 106
    return-void
.end method

.method public onTapCanceled(Landroid/view/View;Z)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "beforeCompleted"    # Z

    .prologue
    .line 26
    return-void
.end method

.method public abstract onTapCompleted(Landroid/view/View;)V
.end method

.method public onTapStarted(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 20
    return-void
.end method

.method public final setCancelOnViewMove(Z)Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;
    .locals 0
    .param p1, "prevent"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->preventAfterPositionChanged:Z

    .line 63
    return-object p0
.end method

.method public final setGestureDetector(Landroid/view/GestureDetector;)Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;
    .locals 0
    .param p1, "gestureDetector"    # Landroid/view/GestureDetector;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->gestureDetector:Landroid/view/GestureDetector;

    .line 77
    return-object p0
.end method

.method public final setPreventCancelBeforeCompleted(Z)Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;
    .locals 0
    .param p1, "prevent"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->preventCancelBeforeCompleted:Z

    .line 70
    return-object p0
.end method

.method public final setRequiredApiVersionForStateListeners(I)Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;
    .locals 0
    .param p1, "apiVersion"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->requiredApiVersion:I

    .line 49
    return-object p0
.end method

.method public final setUseDelayBeforeDown(Z)Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;
    .locals 0
    .param p1, "use"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->delayBeforeDown:Z

    .line 56
    return-object p0
.end method

.method public final toOnTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->onTouchListener:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener$1;-><init>(Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;)V

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->onTouchListener:Landroid/view/View$OnTouchListener;

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->onTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method
