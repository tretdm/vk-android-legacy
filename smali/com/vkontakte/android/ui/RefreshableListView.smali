.class public Lcom/vkontakte/android/ui/RefreshableListView;
.super Landroid/widget/ListView;
.source "RefreshableListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ListView;",
        "Landroid/widget/AbsListView$OnScrollListener;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# static fields
.field private static final SCROLLBAR_SIZE:I = 0xc8

.field private static final STATE_PULL:I = 0x1

.field private static final STATE_REFRESHING:I = 0x3

.field private static final STATE_RELEASE:I = 0x2


# instance fields
.field private animStartOffset:F

.field private animatingAfterRefresh:Z

.field private arrowBitmap:Landroid/graphics/Bitmap;

.field private arrowFlipBitmap:Landroid/graphics/Bitmap;

.field private arrowRotation:F

.field private bwdAnim:Lcom/vkontakte/android/MethodAnimation;

.field private click:Z

.field private clickStartY:F

.field private completelyDisableOverscroll:Z

.field private density:F

.field private dragStartY:F

.field private draggingEnabled:Z

.field private draggingTop:Z

.field private drawOffset:F

.field private drawShadow:Z

.field private eventCanceled:Z

.field private fromTop:Z

.field private fwdAnim:Lcom/vkontakte/android/MethodAnimation;

.field private highlightAfterClick:Z

.field private itrp:Landroid/view/animation/Interpolator;

.field private listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

.field private longClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private msetOverScrollMode:Ljava/lang/reflect/Method;

.field private needReturnTop:Z

.field private offset:F

.field private prevScrollState:I

.field private pullBG:I

.field private refreshContainer:Landroid/widget/FrameLayout;

.field private refreshEnabled:Z

.field private refreshView:Landroid/view/View;

.field private refreshViewHeight:F

.field private scrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private scrollState:I

.field private shadowDrawable:Landroid/graphics/drawable/Drawable;

.field private state:I

.field private stoppedDraggingTop:Z

.field private subtext:Ljava/lang/String;

.field private subtextPaint:Landroid/graphics/Paint;

.field private text:Ljava/lang/String;

.field private textPaint:Landroid/graphics/Paint;

.field private touchslop:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 76
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 44
    iput v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    .line 45
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->needReturnTop:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->stoppedDraggingTop:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->animatingAfterRefresh:Z

    .line 48
    const/high16 v0, 0x425c0000    # 55.0f

    iput v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshViewHeight:F

    .line 49
    iput v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    .line 52
    iput v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->arrowRotation:F

    .line 54
    const-string v0, "Pull to refresh"

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->text:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtext:Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    .line 58
    const v0, -0x151516

    iput v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->pullBG:I

    .line 59
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshEnabled:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->click:Z

    iput-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingEnabled:Z

    .line 60
    iput v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->clickStartY:F

    .line 63
    iput v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->scrollState:I

    iput v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->prevScrollState:I

    .line 64
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->highlightAfterClick:Z

    .line 66
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawShadow:Z

    .line 67
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->eventCanceled:Z

    .line 68
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->fromTop:Z

    .line 69
    iput v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->offset:F

    .line 71
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->completelyDisableOverscroll:Z

    .line 77
    invoke-direct {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->init()V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 87
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    iput v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    .line 45
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->needReturnTop:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->stoppedDraggingTop:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->animatingAfterRefresh:Z

    .line 48
    const/high16 v0, 0x425c0000    # 55.0f

    iput v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshViewHeight:F

    .line 49
    iput v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    .line 52
    iput v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->arrowRotation:F

    .line 54
    const-string v0, "Pull to refresh"

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->text:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtext:Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    .line 58
    const v0, -0x151516

    iput v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->pullBG:I

    .line 59
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshEnabled:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->click:Z

    iput-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingEnabled:Z

    .line 60
    iput v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->clickStartY:F

    .line 63
    iput v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->scrollState:I

    iput v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->prevScrollState:I

    .line 64
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->highlightAfterClick:Z

    .line 66
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawShadow:Z

    .line 67
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->eventCanceled:Z

    .line 68
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->fromTop:Z

    .line 69
    iput v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->offset:F

    .line 71
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->completelyDisableOverscroll:Z

    .line 88
    invoke-direct {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->init()V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 92
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    iput v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    .line 45
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->needReturnTop:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->stoppedDraggingTop:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->animatingAfterRefresh:Z

    .line 48
    const/high16 v0, 0x425c0000    # 55.0f

    iput v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshViewHeight:F

    .line 49
    iput v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    .line 52
    iput v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->arrowRotation:F

    .line 54
    const-string v0, "Pull to refresh"

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->text:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtext:Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    .line 58
    const v0, -0x151516

    iput v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->pullBG:I

    .line 59
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshEnabled:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->click:Z

    iput-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingEnabled:Z

    .line 60
    iput v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->clickStartY:F

    .line 63
    iput v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->scrollState:I

    iput v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->prevScrollState:I

    .line 64
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->highlightAfterClick:Z

    .line 66
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawShadow:Z

    .line 67
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->eventCanceled:Z

    .line 68
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->fromTop:Z

    .line 69
    iput v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->offset:F

    .line 71
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->completelyDisableOverscroll:Z

    .line 93
    invoke-direct {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->init()V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fromTop"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 81
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 44
    iput v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    .line 45
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->needReturnTop:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->stoppedDraggingTop:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->animatingAfterRefresh:Z

    .line 48
    const/high16 v0, 0x425c0000    # 55.0f

    iput v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshViewHeight:F

    .line 49
    iput v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    .line 52
    iput v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->arrowRotation:F

    .line 54
    const-string v0, "Pull to refresh"

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->text:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtext:Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    .line 58
    const v0, -0x151516

    iput v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->pullBG:I

    .line 59
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshEnabled:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->click:Z

    iput-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingEnabled:Z

    .line 60
    iput v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->clickStartY:F

    .line 63
    iput v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->scrollState:I

    iput v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->prevScrollState:I

    .line 64
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->highlightAfterClick:Z

    .line 66
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawShadow:Z

    .line 67
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->eventCanceled:Z

    .line 68
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->fromTop:Z

    .line 69
    iput v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->offset:F

    .line 71
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->completelyDisableOverscroll:Z

    .line 82
    iput-boolean p2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->fromTop:Z

    .line 83
    invoke-direct {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->init()V

    .line 84
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ui/RefreshableListView;Z)V
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->animatingAfterRefresh:Z

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/ui/RefreshableListView;Z)V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ui/RefreshableListView;->enableOverscroll(Z)V

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/ui/RefreshableListView;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/ui/RefreshableListView;)Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/ui/RefreshableListView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtext:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lcom/vkontakte/android/ui/RefreshableListView;I)V
    .locals 0

    .prologue
    .line 49
    iput p1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    return-void
.end method

.method static synthetic access$6(Lcom/vkontakte/android/ui/RefreshableListView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/ui/RefreshableListView;F)V
    .locals 0

    .prologue
    .line 44
    iput p1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    return-void
.end method

.method static synthetic access$8(Lcom/vkontakte/android/ui/RefreshableListView;)Landroid/widget/AbsListView$OnScrollListener;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-object v0
.end method

.method private animateRotateBackward()V
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->bwdAnim:Lcom/vkontakte/android/MethodAnimation;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/RefreshableListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 484
    return-void
.end method

.method private animateRotateForward()V
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->fwdAnim:Lcom/vkontakte/android/MethodAnimation;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/RefreshableListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 479
    return-void
.end method

.method private checkParentView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 194
    if-nez p1, :cond_0

    .line 202
    :goto_0
    return-void

    .line 200
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/vkontakte/android/ui/RefreshableListView;->checkParentView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private enableOverscroll(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    const/4 v0, 0x0

    .line 166
    iget-object v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->msetOverScrollMode:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    .line 168
    :try_start_0
    iget-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->completelyDisableOverscroll:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->msetOverScrollMode:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :cond_1
    :goto_1
    return-void

    .line 169
    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private init()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x96

    const v8, -0x7faaaaab

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 102
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->itrp:Landroid/view/animation/Interpolator;

    .line 103
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->density:F

    .line 104
    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshViewHeight:F

    iget v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->density:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshViewHeight:F

    .line 106
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->touchslop:F

    .line 107
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f03007e

    invoke-static {v0, v1, v7}, Lcom/vkontakte/android/ui/RefreshableListView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshView:Landroid/view/View;

    .line 108
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshContainer:Landroid/widget/FrameLayout;

    .line 109
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshView:Landroid/view/View;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    iget v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshViewHeight:F

    float-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshView:Landroid/view/View;

    const v1, 0x7f090181

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshView:Landroid/view/View;

    const v1, -0x151516

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 113
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->fromTop:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/RefreshableListView;->addHeaderView(Landroid/view/View;)V

    .line 117
    :goto_0
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->arrowFlipBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->arrowBitmap:Landroid/graphics/Bitmap;

    .line 119
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->textPaint:Landroid/graphics/Paint;

    .line 120
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 121
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->textPaint:Landroid/graphics/Paint;

    sget-object v1, Lcom/vkontakte/android/Global;->boldFont:Landroid/graphics/Typeface;

    invoke-static {v1, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 124
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->textPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41600000    # 14.0f

    iget v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->density:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 126
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtextPaint:Landroid/graphics/Paint;

    .line 127
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 128
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtextPaint:Landroid/graphics/Paint;

    sget-object v1, Lcom/vkontakte/android/Global;->regFont:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 131
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41500000    # 13.0f

    iget v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->density:F

    mul-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 133
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->fromTop:Z

    if-eqz v0, :cond_2

    const v0, 0x7f080063

    :goto_1
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->text:Ljava/lang/String;

    .line 135
    new-instance v0, Lcom/vkontakte/android/MethodAnimation;

    const-string v1, "onAnimRotateBackward"

    invoke-direct {v0, p0, v1, v7}, Lcom/vkontakte/android/MethodAnimation;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->bwdAnim:Lcom/vkontakte/android/MethodAnimation;

    .line 136
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->bwdAnim:Lcom/vkontakte/android/MethodAnimation;

    invoke-virtual {v0, v9, v10}, Lcom/vkontakte/android/MethodAnimation;->setDuration(J)V

    .line 137
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->bwdAnim:Lcom/vkontakte/android/MethodAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/MethodAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 139
    new-instance v0, Lcom/vkontakte/android/MethodAnimation;

    const-string v1, "onAnimRotateForward"

    invoke-direct {v0, p0, v1, v7}, Lcom/vkontakte/android/MethodAnimation;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->fwdAnim:Lcom/vkontakte/android/MethodAnimation;

    .line 140
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->fwdAnim:Lcom/vkontakte/android/MethodAnimation;

    invoke-virtual {v0, v9, v10}, Lcom/vkontakte/android/MethodAnimation;->setDuration(J)V

    .line 141
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->fwdAnim:Lcom/vkontakte/android/MethodAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/MethodAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 144
    invoke-virtual {p0, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->setDrawingCacheEnabled(Z)V

    .line 145
    invoke-virtual {p0, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->setAnimationCacheEnabled(Z)V

    .line 146
    invoke-virtual {p0, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->setScrollingCacheEnabled(Z)V

    .line 149
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/RefreshableListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 151
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setOverScrollMode"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->msetOverScrollMode:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_2
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201fa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 156
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iput-boolean v6, p0, Lcom/vkontakte/android/ui/RefreshableListView;->completelyDisableOverscroll:Z

    .line 158
    invoke-direct {p0, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->enableOverscroll(Z)V

    .line 161
    :cond_0
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 162
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 163
    return-void

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/RefreshableListView;->addFooterView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 133
    :cond_2
    const v0, 0x7f080064

    goto/16 :goto_1

    .line 152
    :catch_0
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method public animateTopBounce()V
    .locals 3

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->clearAnimation()V

    .line 459
    iget v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    iput v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->animStartOffset:F

    .line 460
    new-instance v0, Lcom/vkontakte/android/MethodAnimation;

    const-string v1, "onAnim"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/vkontakte/android/MethodAnimation;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 461
    .local v0, "ma":Lcom/vkontakte/android/MethodAnimation;
    const/16 v1, 0x15e

    iget v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/MethodAnimation;->setDuration(J)V

    .line 462
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/MethodAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 463
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/RefreshableListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 470
    return-void
.end method

.method public computeVerticalScrollExtent()I
    .locals 2

    .prologue
    .line 598
    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollExtent()I

    move-result v0

    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollRange()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 599
    const/16 v0, 0xc8

    .line 601
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollExtent()I

    move-result v0

    goto :goto_0
.end method

.method public computeVerticalScrollOffset()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 605
    iget-boolean v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->fromTop:Z

    if-eqz v3, :cond_0

    .line 606
    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollRange()I

    move-result v3

    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollExtent()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v0, v3, -0x64

    .line 607
    .local v0, "maxscroll":I
    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollOffset()I

    move-result v3

    add-int/lit8 v3, v3, -0x64

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 608
    .local v1, "offset":I
    int-to-float v3, v1

    int-to-float v4, v0

    div-float v2, v3, v4

    .line 609
    .local v2, "scp":F
    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollRange()I

    move-result v3

    add-int/lit16 v3, v3, -0xc8

    add-int/lit8 v3, v3, 0x64

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    .line 615
    :goto_0
    return v3

    .line 611
    .end local v0    # "maxscroll":I
    .end local v1    # "offset":I
    .end local v2    # "scp":F
    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollRange()I

    move-result v3

    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollExtent()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v0, v3, -0x64

    .line 612
    .restart local v0    # "maxscroll":I
    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollOffset()I

    move-result v3

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 613
    .restart local v1    # "offset":I
    int-to-float v3, v1

    int-to-float v4, v0

    div-float v2, v3, v4

    .line 614
    .restart local v2    # "scp":F
    const/high16 v3, -0x40800000    # -1.0f

    cmpg-float v3, v2, v3

    if-gez v3, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 615
    :cond_1
    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollRange()I

    move-result v3

    add-int/lit16 v3, v3, -0xc8

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    goto :goto_0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v13, 0x41700000    # 15.0f

    const/4 v10, 0x0

    const/4 v12, 0x3

    const/high16 v11, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 526
    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-boolean v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->fromTop:Z

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    .line 527
    :cond_0
    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->fromTop:Z

    if-nez v0, :cond_1

    iput v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    .line 528
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 529
    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 531
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    :goto_0
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 535
    .local v5, "bgPaint":Landroid/graphics/Paint;
    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->pullBG:I

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 536
    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 537
    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    neg-float v2, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    move-object v0, p1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 539
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshEnabled:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    if-eq v0, v12, :cond_2

    .line 540
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 541
    .local v7, "arrowMatrix":Landroid/graphics/Matrix;
    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->arrowRotation:F

    neg-float v0, v0

    iget-object v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->arrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->arrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v7, v0, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 543
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->arrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshViewHeight:F

    div-float/2addr v2, v11

    iget-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->arrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    neg-float v2, v2

    invoke-virtual {v7, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 544
    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->arrowRotation:F

    const/high16 v2, 0x42b40000    # 90.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_9

    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->arrowFlipBitmap:Landroid/graphics/Bitmap;

    :goto_1
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v7, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 547
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtext:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 548
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtext:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtextPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtext:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    div-float/2addr v3, v11

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshViewHeight:F

    div-float/2addr v3, v11

    iget-object v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->arrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    neg-float v3, v3

    invoke-static {v13}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 551
    .end local v7    # "arrowMatrix":Landroid/graphics/Matrix;
    :cond_2
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->fromTop:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 552
    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->offset:F

    neg-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 553
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeight()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    sub-float v4, v0, v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 555
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshEnabled:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    if-eq v0, v12, :cond_3

    .line 556
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 557
    .restart local v7    # "arrowMatrix":Landroid/graphics/Matrix;
    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->arrowRotation:F

    neg-float v0, v0

    iget-object v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->arrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->arrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v7, v0, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 558
    const/high16 v0, 0x43340000    # 180.0f

    iget-object v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->arrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->arrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v7, v0, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 560
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->arrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshViewHeight:F

    div-float/2addr v3, v11

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->arrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v7, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 561
    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->arrowRotation:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_a

    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->arrowBitmap:Landroid/graphics/Bitmap;

    :goto_2
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v7, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 564
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtext:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 565
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtext:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtextPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtext:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    div-float/2addr v3, v11

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshViewHeight:F

    div-float/2addr v4, v11

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->arrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-static {v13}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtextPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    neg-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 567
    .end local v7    # "arrowMatrix":Landroid/graphics/Matrix;
    :cond_3
    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->offset:F

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 570
    :cond_4
    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    if-ne v0, v12, :cond_5

    .line 571
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v4

    invoke-direct {v0, v10, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 572
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    iget-object v11, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v11

    invoke-direct {v0, v2, v3, v4, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 576
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 578
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawShadow:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_6

    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    if-ne v0, v12, :cond_8

    .line 579
    :cond_6
    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {v0}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    .line 580
    .local v8, "h":I
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getWidth()I

    move-result v1

    invoke-virtual {v0, v10, v10, v1, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 581
    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    iget v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshViewHeight:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v6, v0, v1

    .line 582
    .local v6, "a":F
    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    if-ne v0, v12, :cond_7

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->computeVerticalScrollOffset()I

    move-result v0

    if-nez v0, :cond_b

    const/16 v0, 0xff

    :goto_3
    int-to-float v6, v0

    .line 583
    :cond_7
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    float-to-int v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 584
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 587
    .end local v6    # "a":F
    .end local v8    # "h":I
    :cond_8
    return-void

    .line 532
    .end local v5    # "bgPaint":Landroid/graphics/Paint;
    :catch_0
    move-exception v9

    .local v9, "x":Ljava/lang/Exception;
    const-string v0, "vk"

    invoke-static {v0, v9}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 544
    .end local v9    # "x":Ljava/lang/Exception;
    .restart local v5    # "bgPaint":Landroid/graphics/Paint;
    .restart local v7    # "arrowMatrix":Landroid/graphics/Matrix;
    :cond_9
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->arrowBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_1

    .line 561
    :cond_a
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->arrowFlipBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_2

    .end local v7    # "arrowMatrix":Landroid/graphics/Matrix;
    .restart local v6    # "a":F
    .restart local v8    # "h":I
    :cond_b
    move v0, v10

    .line 582
    goto :goto_3
.end method

.method public getRefreshOffset()F
    .locals 1

    .prologue
    .line 594
    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    return v0
.end method

.method public isDraggingEnabled()Z
    .locals 1

    .prologue
    .line 674
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingEnabled:Z

    return v0
.end method

.method public isHighlightAfterClick()Z
    .locals 1

    .prologue
    .line 666
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->highlightAfterClick:Z

    return v0
.end method

.method public isRefreshEnabled()Z
    .locals 1

    .prologue
    .line 641
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshEnabled:Z

    return v0
.end method

.method public isRefreshing()Z
    .locals 2

    .prologue
    .line 174
    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAnim(F)V
    .locals 3
    .param p1, "time"    # F

    .prologue
    .line 487
    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->animStartOffset:F

    iget-object v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->itrp:Landroid/view/animation/Interpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    invoke-interface {v1, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    .line 488
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    iget v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    invoke-interface {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;->onScrolled(F)V

    .line 489
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->invalidate()V

    .line 490
    return-void
.end method

.method public onAnimRotateBackward(F)V
    .locals 3
    .param p1, "time"    # F

    .prologue
    .line 498
    const/high16 v0, 0x43340000    # 180.0f

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->itrp:Landroid/view/animation/Interpolator;

    invoke-interface {v2, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->arrowRotation:F

    .line 499
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->invalidate()V

    .line 500
    return-void
.end method

.method public onAnimRotateForward(F)V
    .locals 2
    .param p1, "time"    # F

    .prologue
    .line 493
    const/high16 v0, 0x43340000    # 180.0f

    iget-object v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->itrp:Landroid/view/animation/Interpolator;

    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->arrowRotation:F

    .line 494
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->invalidate()V

    .line 495
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 189
    invoke-super {p0}, Landroid/widget/ListView;->onAttachedToWindow()V

    .line 190
    invoke-direct {p0, p0}, Lcom/vkontakte/android/ui/RefreshableListView;->checkParentView(Landroid/view/View;)V

    .line 191
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "aview":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x0

    .line 695
    iget-object v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->longClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-nez v1, :cond_1

    .line 698
    :cond_0
    :goto_0
    return v0

    .line 696
    :cond_1
    iget-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->eventCanceled:Z

    if-nez v1, :cond_0

    .line 697
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->longClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    goto :goto_0
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 0
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    .line 185
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 656
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 657
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 661
    iput p2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->scrollState:I

    .line 662
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 663
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v13, 0x3

    const/4 v8, 0x2

    const/4 v12, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 210
    iget-boolean v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingEnabled:Z

    if-eqz v3, :cond_27

    .line 211
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    .line 212
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->clickStartY:F

    .line 213
    iput-boolean v5, p0, Lcom/vkontakte/android/ui/RefreshableListView;->click:Z

    .line 214
    iget v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->scrollState:I

    iput v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->prevScrollState:I

    .line 215
    iput-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->eventCanceled:Z

    .line 218
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v8, :cond_4

    .line 219
    iget v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->clickStartY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v6, p0, Lcom/vkontakte/android/ui/RefreshableListView;->touchslop:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_1

    iput-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->click:Z

    .line 220
    :cond_1
    iget-boolean v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->fromTop:Z

    if-eqz v3, :cond_e

    .line 221
    iget-boolean v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    if-nez v3, :cond_5

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->computeVerticalScrollOffset()I

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-ltz v3, :cond_5

    :cond_2
    iget-boolean v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->stoppedDraggingTop:Z

    if-nez v3, :cond_5

    iget v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->dragStartY:F

    const v6, -0x39f36000    # -9000.0f

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->animatingAfterRefresh:Z

    if-nez v3, :cond_5

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->isFastScrollEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getWidth()I

    move-result v6

    const/high16 v7, 0x41f00000    # 30.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    cmpl-float v3, v3, v6

    if-gtz v3, :cond_5

    .line 222
    :cond_3
    invoke-direct {p0, v4}, Lcom/vkontakte/android/ui/RefreshableListView;->enableOverscroll(Z)V

    .line 223
    iput-boolean v5, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    .line 224
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->dragStartY:F

    .line 225
    iget-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    invoke-interface {v3}, Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;->getLastUpdatedTime()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtext:Ljava/lang/String;

    .line 298
    :cond_4
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v13, :cond_18

    iget-boolean v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    if-eqz v3, :cond_18

    .line 300
    iput v12, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    .line 301
    iput v12, p0, Lcom/vkontakte/android/ui/RefreshableListView;->dragStartY:F

    .line 302
    iput-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    .line 303
    iput v5, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    .line 304
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->invalidate()V

    .line 305
    invoke-direct {p0, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->enableOverscroll(Z)V

    .line 306
    iput-boolean v5, p0, Lcom/vkontakte/android/ui/RefreshableListView;->eventCanceled:Z

    .line 307
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 393
    :goto_1
    return v5

    .line 228
    :cond_5
    iget-boolean v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    if-eqz v3, :cond_d

    .line 229
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v6, p0, Lcom/vkontakte/android/ui/RefreshableListView;->dragStartY:F

    sub-float/2addr v3, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    iput v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    .line 230
    iget-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    iget v6, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    invoke-interface {v3, v6}, Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;->onScrolled(F)V

    .line 232
    :cond_6
    iget v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    iget v6, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshViewHeight:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_7

    iget v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    if-ne v3, v5, :cond_7

    .line 233
    iput v8, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    .line 234
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f080065

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->text:Ljava/lang/String;

    .line 235
    invoke-direct {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->animateRotateForward()V

    .line 237
    :cond_7
    iget v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    iget v6, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshViewHeight:F

    cmpg-float v3, v3, v6

    if-gez v3, :cond_8

    iget v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    if-ne v3, v8, :cond_8

    .line 238
    iput v5, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    .line 239
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f080063

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->text:Ljava/lang/String;

    .line 240
    invoke-direct {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->animateRotateBackward()V

    .line 243
    :cond_8
    iget v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    cmpg-float v3, v3, v12

    if-gez v3, :cond_b

    .line 244
    iput v12, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    .line 245
    iget-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    iget v6, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    invoke-interface {v3, v6}, Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;->onScrolled(F)V

    .line 246
    :cond_9
    iput-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    .line 247
    iput-boolean v5, p0, Lcom/vkontakte/android/ui/RefreshableListView;->stoppedDraggingTop:Z

    .line 248
    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollExtent()I

    move-result v3

    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollRange()I

    move-result v6

    if-ge v3, v6, :cond_a

    .line 249
    invoke-direct {p0, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->enableOverscroll(Z)V

    .line 255
    :cond_a
    iget v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    float-to-double v6, v3

    iget v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->touchslop:F

    float-to-double v8, v3

    const-wide/high16 v10, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v8, v10

    cmpl-double v3, v6, v8

    if-gtz v3, :cond_c

    iget-boolean v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->needReturnTop:Z

    if-nez v3, :cond_c

    move v3, v4

    :goto_2
    iput-boolean v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->needReturnTop:Z

    goto/16 :goto_0

    .line 251
    :cond_b
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->invalidate()V

    .line 252
    iget-boolean v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->needReturnTop:Z

    if-eqz v3, :cond_a

    goto/16 :goto_1

    :cond_c
    move v3, v5

    .line 255
    goto :goto_2

    .line 256
    :cond_d
    iget-boolean v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->stoppedDraggingTop:Z

    if-eqz v3, :cond_4

    iput-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->stoppedDraggingTop:Z

    goto/16 :goto_0

    .line 259
    :cond_e
    iget-boolean v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    if-nez v3, :cond_f

    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollOffset()I

    move-result v3

    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollRange()I

    move-result v6

    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollExtent()I

    move-result v7

    sub-int/2addr v6, v7

    if-lt v3, v6, :cond_f

    iget-boolean v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->stoppedDraggingTop:Z

    if-nez v3, :cond_f

    iget v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->dragStartY:F

    const v6, -0x39f36000    # -9000.0f

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_f

    iget-boolean v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->animatingAfterRefresh:Z

    if-nez v3, :cond_f

    .line 260
    invoke-direct {p0, v4}, Lcom/vkontakte/android/ui/RefreshableListView;->enableOverscroll(Z)V

    .line 261
    iput-boolean v5, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    .line 262
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->dragStartY:F

    .line 263
    iget-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    invoke-interface {v3}, Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;->getLastUpdatedTime()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtext:Ljava/lang/String;

    goto/16 :goto_0

    .line 266
    :cond_f
    iget-boolean v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    if-eqz v3, :cond_17

    .line 267
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v6, p0, Lcom/vkontakte/android/ui/RefreshableListView;->dragStartY:F

    sub-float/2addr v3, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    iput v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    .line 268
    iget-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    iget v6, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    neg-float v6, v6

    invoke-interface {v3, v6}, Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;->onScrolled(F)V

    .line 270
    :cond_10
    iget v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    neg-float v3, v3

    iget v6, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshViewHeight:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_11

    iget v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    if-ne v3, v5, :cond_11

    .line 271
    iput v8, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    .line 272
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f080065

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->text:Ljava/lang/String;

    .line 273
    invoke-direct {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->animateRotateForward()V

    .line 275
    :cond_11
    iget v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    neg-float v3, v3

    iget v6, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshViewHeight:F

    cmpg-float v3, v3, v6

    if-gez v3, :cond_12

    iget v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    if-ne v3, v8, :cond_12

    .line 276
    iput v5, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    .line 277
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f080064

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->text:Ljava/lang/String;

    .line 278
    invoke-direct {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->animateRotateBackward()V

    .line 281
    :cond_12
    iget v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    cmpl-float v3, v3, v12

    if-lez v3, :cond_15

    .line 282
    iput v12, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    .line 283
    iget-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    if-eqz v3, :cond_13

    iget-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    iget v6, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    invoke-interface {v3, v6}, Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;->onScrolled(F)V

    .line 284
    :cond_13
    iput-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    .line 285
    iput-boolean v5, p0, Lcom/vkontakte/android/ui/RefreshableListView;->stoppedDraggingTop:Z

    .line 286
    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollExtent()I

    move-result v3

    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollRange()I

    move-result v6

    if-ge v3, v6, :cond_14

    .line 287
    invoke-direct {p0, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->enableOverscroll(Z)V

    .line 293
    :cond_14
    iget v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    neg-float v3, v3

    float-to-double v6, v3

    iget v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->touchslop:F

    float-to-double v8, v3

    const-wide/high16 v10, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v8, v10

    cmpl-double v3, v6, v8

    if-gtz v3, :cond_16

    iget-boolean v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->needReturnTop:Z

    if-nez v3, :cond_16

    move v3, v4

    :goto_3
    iput-boolean v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->needReturnTop:Z

    goto/16 :goto_0

    .line 289
    :cond_15
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->invalidate()V

    .line 290
    iget-boolean v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->needReturnTop:Z

    if-eqz v3, :cond_14

    goto/16 :goto_1

    :cond_16
    move v3, v5

    .line 293
    goto :goto_3

    .line 294
    :cond_17
    iget-boolean v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->stoppedDraggingTop:Z

    if-eqz v3, :cond_4

    iput-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->stoppedDraggingTop:Z

    goto/16 :goto_0

    .line 311
    :cond_18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v5, :cond_1e

    iget-boolean v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    if-eqz v3, :cond_1e

    .line 312
    invoke-virtual {p0, p0, v4}, Lcom/vkontakte/android/ui/RefreshableListView;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 313
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v6, p0, Lcom/vkontakte/android/ui/RefreshableListView;->dragStartY:F

    sub-float/2addr v3, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    iput v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    .line 314
    iget-boolean v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->fromTop:Z

    if-eqz v3, :cond_20

    .line 315
    iget-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    if-eqz v3, :cond_19

    iget-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    iget v6, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    invoke-interface {v3, v6}, Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;->onScrolled(F)V

    .line 316
    :cond_19
    iget v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    iget v6, p0, Lcom/vkontakte/android/ui/RefreshableListView;->touchslop:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_1c

    .line 317
    iget-boolean v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshEnabled:Z

    if-eqz v3, :cond_1b

    iget v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    iget v6, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshViewHeight:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_1b

    iget v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    if-eq v3, v13, :cond_1b

    .line 318
    iput v13, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    .line 319
    iget v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    iget v6, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshViewHeight:F

    sub-float/2addr v3, v6

    iput v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    .line 320
    iget-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    if-eqz v3, :cond_1a

    iget-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    iget v6, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    invoke-interface {v3, v6}, Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;->onScrolled(F)V

    .line 321
    :cond_1a
    iget-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 322
    iget-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    if-eqz v3, :cond_1b

    iget-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    invoke-interface {v3}, Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;->onRefresh()V

    .line 324
    :cond_1b
    iput-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    .line 325
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->animateTopBounce()V

    .line 326
    iput-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->needReturnTop:Z

    goto/16 :goto_1

    .line 329
    :cond_1c
    iput-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    .line 330
    iput v12, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    .line 331
    iget-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    if-eqz v3, :cond_1d

    iget-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    iget v6, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    invoke-interface {v3, v6}, Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;->onScrolled(F)V

    .line 332
    :cond_1d
    iput-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->needReturnTop:Z

    .line 364
    :goto_4
    invoke-direct {p0, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->enableOverscroll(Z)V

    .line 367
    :cond_1e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v5, :cond_1f

    .line 368
    iput v12, p0, Lcom/vkontakte/android/ui/RefreshableListView;->dragStartY:F

    .line 375
    :cond_1f
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 379
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .local v1, "result":Z
    move v5, v1

    .line 381
    goto/16 :goto_1

    .line 337
    .end local v1    # "result":Z
    :cond_20
    iget-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    if-eqz v3, :cond_21

    iget-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    iget v6, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    invoke-interface {v3, v6}, Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;->onScrolled(F)V

    .line 338
    :cond_21
    iget v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    neg-float v3, v3

    iget v6, p0, Lcom/vkontakte/android/ui/RefreshableListView;->touchslop:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_25

    .line 339
    iget-boolean v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshEnabled:Z

    if-eqz v3, :cond_24

    iget v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    neg-float v3, v3

    iget v6, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshViewHeight:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_24

    iget v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    if-eq v3, v13, :cond_24

    .line 340
    iput v13, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    .line 341
    iget v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    iget v6, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshViewHeight:F

    add-float/2addr v3, v6

    iput v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    .line 342
    iget-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    if-eqz v3, :cond_22

    iget-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    iget v6, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    invoke-interface {v3, v6}, Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;->onScrolled(F)V

    .line 343
    :cond_22
    iget-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 344
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getFirstVisiblePosition()I

    move-result v3

    if-nez v3, :cond_23

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getLastVisiblePosition()I

    move-result v3

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v3, v6, :cond_23

    .line 346
    :try_start_1
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    sub-int v0, v3, v6

    .line 347
    .local v0, "p":I
    iget-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshContainer:Landroid/widget/FrameLayout;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v0, v7, v8}, Landroid/widget/FrameLayout;->setPadding(IIII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 350
    .end local v0    # "p":I
    :cond_23
    :goto_5
    iget-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    if-eqz v3, :cond_24

    iget-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    invoke-interface {v3}, Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;->onRefresh()V

    .line 352
    :cond_24
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/ui/RefreshableListView;->setSelection(I)V

    .line 353
    iput-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    .line 354
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->animateTopBounce()V

    .line 355
    iput-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->needReturnTop:Z

    goto/16 :goto_1

    .line 358
    :cond_25
    iput-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    .line 359
    iput v12, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    .line 360
    iget-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    if-eqz v3, :cond_26

    iget-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    iget v6, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    invoke-interface {v3, v6}, Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;->onScrolled(F)V

    .line 361
    :cond_26
    iput-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->needReturnTop:Z

    goto/16 :goto_4

    .line 383
    :catch_0
    move-exception v2

    .line 384
    .local v2, "x":Ljava/lang/Exception;
    const-string v3, "vk"

    const-string v4, "aw shit"

    invoke-static {v3, v4, v2}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 391
    .end local v2    # "x":Ljava/lang/Exception;
    :cond_27
    :try_start_2
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v5

    goto/16 :goto_1

    .line 392
    :catch_1
    move-exception v2

    .restart local v2    # "x":Ljava/lang/Exception;
    const-string v3, "vk"

    invoke-static {v3, v2}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v5, v4

    .line 393
    goto/16 :goto_1

    .line 348
    .end local v2    # "x":Ljava/lang/Exception;
    :catch_2
    move-exception v3

    goto :goto_5
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 1
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I
    .param p3, "scrollX"    # I
    .param p4, "scrollY"    # I
    .param p5, "scrollRangeX"    # I
    .param p6, "scrollRangeY"    # I
    .param p7, "maxOverScrollX"    # I
    .param p8, "maxOverScrollY"    # I
    .param p9, "isTouchEvent"    # Z

    .prologue
    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 682
    new-instance v0, Lcom/vkontakte/android/ui/RefreshableListView$5;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/RefreshableListView$5;-><init>(Lcom/vkontakte/android/ui/RefreshableListView;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/RefreshableListView;->post(Ljava/lang/Runnable;)Z

    .line 691
    return-void
.end method

.method public refreshDone()V
    .locals 1

    .prologue
    .line 413
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/RefreshableListView;->refreshDone(Z)V

    .line 414
    return-void
.end method

.method public refreshDone(Z)V
    .locals 6
    .param p1, "animate"    # Z

    .prologue
    const-wide/16 v4, 0x190

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 417
    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 455
    :goto_0
    return-void

    .line 418
    :cond_0
    iput v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    .line 419
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080063

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->text:Ljava/lang/String;

    .line 420
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->arrowRotation:F

    .line 421
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 422
    iput-boolean v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->animatingAfterRefresh:Z

    .line 423
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    if-eqz v0, :cond_1

    .line 424
    const v0, -0x39f36000    # -9000.0f

    iput v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->dragStartY:F

    .line 425
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    .line 427
    :cond_1
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->fromTop:Z

    if-eqz v0, :cond_4

    .line 428
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    .line 429
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    .line 430
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    iget v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    invoke-interface {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;->onScrolled(F)V

    .line 432
    :cond_2
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->animateTopBounce()V

    .line 433
    new-instance v0, Lcom/vkontakte/android/ui/RefreshableListView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/RefreshableListView$1;-><init>(Lcom/vkontakte/android/ui/RefreshableListView;)V

    invoke-virtual {p0, v0, v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 438
    :cond_3
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->animatingAfterRefresh:Z

    goto :goto_0

    .line 441
    :cond_4
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 442
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_6

    if-eqz p1, :cond_6

    .line 443
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    .line 444
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    iget v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    invoke-interface {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;->onScrolled(F)V

    .line 446
    :cond_5
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->animateTopBounce()V

    .line 447
    new-instance v0, Lcom/vkontakte/android/ui/RefreshableListView$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/RefreshableListView$2;-><init>(Lcom/vkontakte/android/ui/RefreshableListView;)V

    invoke-virtual {p0, v0, v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 452
    :cond_6
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->animatingAfterRefresh:Z

    goto/16 :goto_0
.end method

.method public scrollDown()V
    .locals 13

    .prologue
    const/4 v4, 0x0

    .line 620
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getCount()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    float-to-int v9, v0

    .line 621
    .local v9, "d":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    move v7, v4

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v10

    .line 622
    .local v10, "ev1":Landroid/view/MotionEvent;
    invoke-super {p0, v10}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v12

    .line 623
    .local v12, "rr":Z
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    const/16 v0, 0xa

    if-lt v11, v0, :cond_0

    .line 630
    new-instance v0, Lcom/vkontakte/android/ui/RefreshableListView$4;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/RefreshableListView$4;-><init>(Lcom/vkontakte/android/ui/RefreshableListView;)V

    .line 633
    mul-int/lit8 v1, v9, 0xb

    int-to-long v1, v1

    .line 630
    invoke-virtual {p0, v0, v1, v2}, Lcom/vkontakte/android/ui/RefreshableListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 634
    return-void

    .line 624
    :cond_0
    move v8, v11

    .line 625
    .local v8, "_i":I
    new-instance v0, Lcom/vkontakte/android/ui/RefreshableListView$3;

    invoke-direct {v0, p0, v8}, Lcom/vkontakte/android/ui/RefreshableListView$3;-><init>(Lcom/vkontakte/android/ui/RefreshableListView;I)V

    .line 628
    mul-int v1, v9, v11

    int-to-long v1, v1

    .line 625
    invoke-virtual {p0, v0, v1, v2}, Lcom/vkontakte/android/ui/RefreshableListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 623
    add-int/lit8 v11, v11, 0x1

    goto :goto_0
.end method

.method public setArrowResource(I)V
    .locals 0
    .param p1, "r"    # I

    .prologue
    .line 513
    invoke-virtual {p0, p1, p1}, Lcom/vkontakte/android/ui/RefreshableListView;->setArrowResource(II)V

    .line 514
    return-void
.end method

.method public setArrowResource(II)V
    .locals 1
    .param p1, "r"    # I
    .param p2, "rf"    # I

    .prologue
    .line 508
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->arrowBitmap:Landroid/graphics/Bitmap;

    .line 509
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->arrowFlipBitmap:Landroid/graphics/Bitmap;

    .line 510
    return-void
.end method

.method public setDraggingEnabled(Z)V
    .locals 0
    .param p1, "draggingEnabled"    # Z

    .prologue
    .line 678
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingEnabled:Z

    .line 679
    return-void
.end method

.method public setFromTop(Z)V
    .locals 0
    .param p1, "fromTop"    # Z

    .prologue
    .line 205
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->fromTop:Z

    .line 206
    return-void
.end method

.method public setHighlightAfterClick(Z)V
    .locals 0
    .param p1, "highlightAfterClick"    # Z

    .prologue
    .line 670
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->highlightAfterClick:Z

    .line 671
    return-void
.end method

.method public setOffset(F)V
    .locals 0
    .param p1, "o"    # F

    .prologue
    .line 473
    iput p1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->offset:F

    .line 474
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 0

    .prologue
    .line 409
    .local p1, "l":Landroid/widget/AdapterView$OnItemLongClickListener;, "Landroid/widget/AdapterView$OnItemLongClickListener;"
    iput-object p1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->longClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 410
    return-void
.end method

.method public setOnRefreshListener(Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;)V
    .locals 0
    .param p1, "l"    # Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    .prologue
    .line 590
    iput-object p1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    .line 591
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 651
    iput-object p1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 652
    return-void
.end method

.method public setProgressResource(I)V
    .locals 2
    .param p1, "r"    # I

    .prologue
    .line 517
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshView:Landroid/view/View;

    const v1, 0x7f090181

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 518
    return-void
.end method

.method public setRefreshEnabled(Z)V
    .locals 0
    .param p1, "refreshEnabled"    # Z

    .prologue
    .line 637
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshEnabled:Z

    .line 638
    return-void
.end method

.method public setTextColor(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    const/4 v2, 0x0

    .line 521
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 522
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtextPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 523
    return-void
.end method

.method public setTopColor(I)V
    .locals 1
    .param p1, "c"    # I

    .prologue
    .line 503
    iput p1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->pullBG:I

    .line 504
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 505
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 14
    .param p1, "pos"    # I

    .prologue
    .line 702
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getFirstVisiblePosition()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 703
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/ui/RefreshableListView;->setSelection(I)V

    .line 745
    :goto_0
    return-void

    .line 706
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_1

    .line 707
    iget-object v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    const/4 v2, 0x2

    invoke-interface {v1, p0, v2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 708
    const/4 v1, 0x0

    const/16 v2, 0x12c

    invoke-virtual {p0, p1, v1, v2}, Lcom/vkontakte/android/ui/RefreshableListView;->smoothScrollToPositionFromTop(III)V

    .line 709
    new-instance v1, Lcom/vkontakte/android/ui/RefreshableListView$6;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/ui/RefreshableListView$6;-><init>(Lcom/vkontakte/android/ui/RefreshableListView;I)V

    .line 714
    const-wide/16 v12, 0x15e

    .line 709
    invoke-virtual {p0, v1, v12, v13}, Lcom/vkontakte/android/ui/RefreshableListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 717
    :cond_1
    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 718
    .local v6, "itrp":Landroid/view/animation/DecelerateInterpolator;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 719
    .local v4, "startTime":J
    const-wide/16 v9, 0x12c

    .line 720
    .local v9, "duration":J
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getFirstVisiblePosition()I

    move-result v3

    .line 721
    .local v3, "startPos":I
    const/4 v8, 0x0

    .line 722
    .local v8, "avg":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildCount()I

    move-result v1

    if-lt v11, v1, :cond_2

    .line 725
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildCount()I

    move-result v1

    div-int v7, v8, v1

    .line 726
    .local v7, "itemHeight":I
    new-instance v0, Lcom/vkontakte/android/ui/RefreshableListView$7;

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/vkontakte/android/ui/RefreshableListView$7;-><init>(Lcom/vkontakte/android/ui/RefreshableListView;IIJLandroid/view/animation/DecelerateInterpolator;I)V

    .line 744
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/RefreshableListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 723
    .end local v0    # "r":Ljava/lang/Runnable;
    .end local v7    # "itemHeight":I
    :cond_2
    invoke-virtual {p0, v11}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v8, v1

    .line 722
    add-int/lit8 v11, v11, 0x1

    goto :goto_1
.end method
