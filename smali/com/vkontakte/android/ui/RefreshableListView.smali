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

.field private skipNextHighlight:Z

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

    .line 73
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->skipNextHighlight:Z

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

    .line 73
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->skipNextHighlight:Z

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

    .line 73
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->skipNextHighlight:Z

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

    .line 73
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->skipNextHighlight:Z

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
    .line 160
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
    .line 473
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->bwdAnim:Lcom/vkontakte/android/MethodAnimation;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/RefreshableListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 474
    return-void
.end method

.method private animateRotateForward()V
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->fwdAnim:Lcom/vkontakte/android/MethodAnimation;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/RefreshableListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 469
    return-void
.end method

.method private checkParentView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 188
    if-nez p1, :cond_0

    .line 196
    :goto_0
    return-void

    .line 194
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/vkontakte/android/ui/RefreshableListView;->checkParentView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 195
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private enableOverscroll(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    const/4 v0, 0x0

    .line 161
    iget-object v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->msetOverScrollMode:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 163
    :try_start_0
    iget-object v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->msetOverScrollMode:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :cond_0
    :goto_1
    return-void

    .line 163
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 164
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

    const v1, 0x7f030061

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

    const v1, 0x7f080134

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshView:Landroid/view/View;

    const v1, -0x151516

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 113
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->fromTop:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/RefreshableListView;->addHeaderView(Landroid/view/View;)V

    .line 117
    :goto_0
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201a2

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

    if-eqz v0, :cond_1

    const v0, 0x7f060049

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

    const v1, 0x7f0201ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 156
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 157
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 158
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/RefreshableListView;->addFooterView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 133
    :cond_1
    const v0, 0x7f06004a

    goto :goto_1

    .line 152
    :catch_0
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method public animateTopBounce()V
    .locals 3

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->clearAnimation()V

    .line 449
    iget v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    iput v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->animStartOffset:F

    .line 450
    new-instance v0, Lcom/vkontakte/android/MethodAnimation;

    const-string v1, "onAnim"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/vkontakte/android/MethodAnimation;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 451
    .local v0, "ma":Lcom/vkontakte/android/MethodAnimation;
    const/16 v1, 0x15e

    iget v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/MethodAnimation;->setDuration(J)V

    .line 452
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/MethodAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 453
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/RefreshableListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 460
    return-void
.end method

.method public computeVerticalScrollExtent()I
    .locals 2

    .prologue
    .line 588
    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollExtent()I

    move-result v0

    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollRange()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 589
    const/16 v0, 0xc8

    .line 591
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

    .line 595
    iget-boolean v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->fromTop:Z

    if-eqz v3, :cond_0

    .line 596
    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollRange()I

    move-result v3

    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollExtent()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v0, v3, -0x64

    .line 597
    .local v0, "maxscroll":I
    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollOffset()I

    move-result v3

    add-int/lit8 v3, v3, -0x64

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 598
    .local v1, "offset":I
    int-to-float v3, v1

    int-to-float v4, v0

    div-float v2, v3, v4

    .line 599
    .local v2, "scp":F
    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollRange()I

    move-result v3

    add-int/lit16 v3, v3, -0xc8

    add-int/lit8 v3, v3, 0x64

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    .line 605
    :goto_0
    return v3

    .line 601
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

    .line 602
    .restart local v0    # "maxscroll":I
    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollOffset()I

    move-result v3

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 603
    .restart local v1    # "offset":I
    int-to-float v3, v1

    int-to-float v4, v0

    div-float v2, v3, v4

    .line 604
    .restart local v2    # "scp":F
    const/high16 v3, -0x40800000    # -1.0f

    cmpg-float v3, v2, v3

    if-gez v3, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 605
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
    .locals 13
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v12, 0x41700000    # 15.0f

    const/4 v9, 0x0

    const/4 v11, 0x3

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 516
    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-boolean v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->fromTop:Z

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    .line 517
    :cond_0
    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->fromTop:Z

    if-nez v0, :cond_1

    iput v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    .line 518
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 519
    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 521
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    :goto_0
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 525
    .local v5, "bgPaint":Landroid/graphics/Paint;
    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->pullBG:I

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 526
    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 527
    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    neg-float v2, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    move-object v0, p1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 529
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshEnabled:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    if-eq v0, v11, :cond_2

    .line 530
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 531
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

    .line 533
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

    div-float/2addr v2, v10

    iget-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->arrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    neg-float v2, v2

    invoke-virtual {v7, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 534
    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->arrowRotation:F

    const/high16 v2, 0x42b40000    # 90.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_9

    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->arrowFlipBitmap:Landroid/graphics/Bitmap;

    :goto_1
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v7, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 537
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtext:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 538
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtext:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtextPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtext:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    div-float/2addr v3, v10

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshViewHeight:F

    div-float/2addr v3, v10

    iget-object v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->arrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    neg-float v3, v3

    invoke-static {v12}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 541
    .end local v7    # "arrowMatrix":Landroid/graphics/Matrix;
    :cond_2
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->fromTop:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 542
    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->offset:F

    neg-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 543
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

    .line 545
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshEnabled:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    if-eq v0, v11, :cond_3

    .line 546
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 547
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

    .line 548
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

    .line 550
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

    div-float/2addr v3, v10

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->arrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v7, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 551
    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->arrowRotation:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_a

    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->arrowBitmap:Landroid/graphics/Bitmap;

    :goto_2
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v7, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 554
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtext:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 555
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtext:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtextPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtext:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    div-float/2addr v3, v10

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshViewHeight:F

    div-float/2addr v4, v10

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->arrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-static {v12}, Lcom/vkontakte/android/Global;->scale(F)I

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

    .line 557
    .end local v7    # "arrowMatrix":Landroid/graphics/Matrix;
    :cond_3
    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->offset:F

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 560
    :cond_4
    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    if-ne v0, v11, :cond_5

    .line 561
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

    invoke-direct {v0, v9, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 562
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    iget-object v10, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v10

    invoke-direct {v0, v2, v3, v4, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 566
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 568
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawShadow:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_6

    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    if-ne v0, v11, :cond_8

    .line 569
    :cond_6
    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {v0}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    .line 570
    .local v8, "h":I
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getWidth()I

    move-result v1

    invoke-virtual {v0, v9, v9, v1, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 571
    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    iget v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshViewHeight:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v6, v0, v1

    .line 572
    .local v6, "a":F
    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    if-ne v0, v11, :cond_7

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->computeVerticalScrollOffset()I

    move-result v0

    if-nez v0, :cond_b

    const/16 v0, 0xff

    :goto_3
    int-to-float v6, v0

    .line 573
    :cond_7
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    float-to-int v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 574
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 577
    .end local v6    # "a":F
    .end local v8    # "h":I
    :cond_8
    return-void

    .line 534
    .restart local v7    # "arrowMatrix":Landroid/graphics/Matrix;
    :cond_9
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->arrowBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_1

    .line 551
    :cond_a
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->arrowFlipBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_2

    .end local v7    # "arrowMatrix":Landroid/graphics/Matrix;
    .restart local v6    # "a":F
    .restart local v8    # "h":I
    :cond_b
    move v0, v9

    .line 572
    goto :goto_3

    .line 522
    .end local v5    # "bgPaint":Landroid/graphics/Paint;
    .end local v6    # "a":F
    .end local v8    # "h":I
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public getRefreshOffset()F
    .locals 1

    .prologue
    .line 584
    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    return v0
.end method

.method public isDraggingEnabled()Z
    .locals 1

    .prologue
    .line 664
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingEnabled:Z

    return v0
.end method

.method public isHighlightAfterClick()Z
    .locals 1

    .prologue
    .line 656
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->highlightAfterClick:Z

    return v0
.end method

.method public isRefreshEnabled()Z
    .locals 1

    .prologue
    .line 631
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshEnabled:Z

    return v0
.end method

.method public isRefreshing()Z
    .locals 2

    .prologue
    .line 168
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
    .line 477
    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->animStartOffset:F

    iget-object v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->itrp:Landroid/view/animation/Interpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    invoke-interface {v1, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    .line 478
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    iget v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    invoke-interface {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;->onScrolled(F)V

    .line 479
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->invalidate()V

    .line 480
    return-void
.end method

.method public onAnimRotateBackward(F)V
    .locals 3
    .param p1, "time"    # F

    .prologue
    .line 488
    const/high16 v0, 0x43340000    # 180.0f

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->itrp:Landroid/view/animation/Interpolator;

    invoke-interface {v2, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->arrowRotation:F

    .line 489
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->invalidate()V

    .line 490
    return-void
.end method

.method public onAnimRotateForward(F)V
    .locals 2
    .param p1, "time"    # F

    .prologue
    .line 483
    const/high16 v0, 0x43340000    # 180.0f

    iget-object v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->itrp:Landroid/view/animation/Interpolator;

    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->arrowRotation:F

    .line 484
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->invalidate()V

    .line 485
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 183
    invoke-super {p0}, Landroid/widget/ListView;->onAttachedToWindow()V

    .line 184
    invoke-direct {p0, p0}, Lcom/vkontakte/android/ui/RefreshableListView;->checkParentView(Landroid/view/View;)V

    .line 185
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

    .line 685
    iget-object v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->longClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-nez v1, :cond_1

    .line 689
    :cond_0
    :goto_0
    return v0

    .line 686
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->skipNextHighlight:Z

    .line 687
    iget-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->eventCanceled:Z

    if-nez v1, :cond_0

    .line 688
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
    .line 179
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 646
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 647
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 651
    iput p2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->scrollState:I

    .line 652
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 653
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x3

    const/4 v7, 0x2

    const/4 v11, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 204
    iget-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingEnabled:Z

    if-eqz v2, :cond_27

    .line 205
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 206
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->clickStartY:F

    .line 207
    iput-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->click:Z

    .line 208
    iget v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->scrollState:I

    iput v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->prevScrollState:I

    .line 209
    iput-boolean v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->eventCanceled:Z

    .line 212
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v7, :cond_4

    .line 213
    iget v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->clickStartY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v5, p0, Lcom/vkontakte/android/ui/RefreshableListView;->touchslop:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_1

    iput-boolean v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->click:Z

    .line 214
    :cond_1
    iget-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->fromTop:Z

    if-eqz v2, :cond_e

    .line 215
    iget-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->computeVerticalScrollOffset()I

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-ltz v2, :cond_5

    :cond_2
    iget-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->stoppedDraggingTop:Z

    if-nez v2, :cond_5

    iget v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->dragStartY:F

    const v5, -0x39f36000    # -9000.0f

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->animatingAfterRefresh:Z

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->isFastScrollEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getWidth()I

    move-result v5

    const/high16 v6, 0x41f00000    # 30.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v2, v2, v5

    if-gtz v2, :cond_5

    .line 216
    :cond_3
    invoke-direct {p0, v3}, Lcom/vkontakte/android/ui/RefreshableListView;->enableOverscroll(Z)V

    .line 217
    iput-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    .line 218
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->dragStartY:F

    .line 219
    iget-object v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    invoke-interface {v2}, Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;->getLastUpdatedTime()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtext:Ljava/lang/String;

    .line 291
    :cond_4
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v12, :cond_18

    iget-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    if-eqz v2, :cond_18

    .line 293
    iput v11, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    .line 294
    iput v11, p0, Lcom/vkontakte/android/ui/RefreshableListView;->dragStartY:F

    .line 295
    iput-boolean v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    .line 296
    iput v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    .line 297
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->invalidate()V

    .line 298
    invoke-direct {p0, v4}, Lcom/vkontakte/android/ui/RefreshableListView;->enableOverscroll(Z)V

    .line 299
    iput-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->eventCanceled:Z

    .line 300
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 383
    :goto_1
    return v4

    .line 222
    :cond_5
    iget-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    if-eqz v2, :cond_d

    .line 223
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v5, p0, Lcom/vkontakte/android/ui/RefreshableListView;->dragStartY:F

    sub-float/2addr v2, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    iput v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    .line 224
    iget-object v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    iget v5, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    invoke-interface {v2, v5}, Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;->onScrolled(F)V

    .line 226
    :cond_6
    iget v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    iget v5, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshViewHeight:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_7

    iget v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    if-ne v2, v4, :cond_7

    .line 227
    iput v7, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    .line 228
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f06004b

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->text:Ljava/lang/String;

    .line 229
    invoke-direct {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->animateRotateForward()V

    .line 231
    :cond_7
    iget v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    iget v5, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshViewHeight:F

    cmpg-float v2, v2, v5

    if-gez v2, :cond_8

    iget v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    if-ne v2, v7, :cond_8

    .line 232
    iput v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    .line 233
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f060049

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->text:Ljava/lang/String;

    .line 234
    invoke-direct {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->animateRotateBackward()V

    .line 237
    :cond_8
    iget v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    cmpg-float v2, v2, v11

    if-gez v2, :cond_b

    .line 238
    iput v11, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    .line 239
    iget-object v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    iget v5, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    invoke-interface {v2, v5}, Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;->onScrolled(F)V

    .line 240
    :cond_9
    iput-boolean v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    .line 241
    iput-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->stoppedDraggingTop:Z

    .line 242
    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollExtent()I

    move-result v2

    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollRange()I

    move-result v5

    if-ge v2, v5, :cond_a

    .line 243
    invoke-direct {p0, v4}, Lcom/vkontakte/android/ui/RefreshableListView;->enableOverscroll(Z)V

    .line 249
    :cond_a
    iget v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    float-to-double v5, v2

    iget v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->touchslop:F

    float-to-double v7, v2

    const-wide/high16 v9, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v7, v9

    cmpl-double v2, v5, v7

    if-gtz v2, :cond_c

    iget-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->needReturnTop:Z

    if-nez v2, :cond_c

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->needReturnTop:Z

    goto/16 :goto_0

    .line 245
    :cond_b
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->invalidate()V

    .line 246
    iget-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->needReturnTop:Z

    if-eqz v2, :cond_a

    goto/16 :goto_1

    :cond_c
    move v2, v4

    .line 249
    goto :goto_2

    .line 250
    :cond_d
    iget-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->stoppedDraggingTop:Z

    if-eqz v2, :cond_4

    iput-boolean v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->stoppedDraggingTop:Z

    goto/16 :goto_0

    .line 252
    :cond_e
    iget-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    if-nez v2, :cond_f

    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollOffset()I

    move-result v2

    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollRange()I

    move-result v5

    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollExtent()I

    move-result v6

    sub-int/2addr v5, v6

    if-ne v2, v5, :cond_f

    iget-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->stoppedDraggingTop:Z

    if-nez v2, :cond_f

    iget v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->dragStartY:F

    const v5, -0x39f36000    # -9000.0f

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_f

    iget-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->animatingAfterRefresh:Z

    if-nez v2, :cond_f

    .line 253
    invoke-direct {p0, v3}, Lcom/vkontakte/android/ui/RefreshableListView;->enableOverscroll(Z)V

    .line 254
    iput-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    .line 255
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->dragStartY:F

    .line 256
    iget-object v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    invoke-interface {v2}, Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;->getLastUpdatedTime()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtext:Ljava/lang/String;

    goto/16 :goto_0

    .line 259
    :cond_f
    iget-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    if-eqz v2, :cond_17

    .line 260
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v5, p0, Lcom/vkontakte/android/ui/RefreshableListView;->dragStartY:F

    sub-float/2addr v2, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    iput v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    .line 261
    iget-object v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    iget v5, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    neg-float v5, v5

    invoke-interface {v2, v5}, Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;->onScrolled(F)V

    .line 263
    :cond_10
    iget v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    neg-float v2, v2

    iget v5, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshViewHeight:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_11

    iget v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    if-ne v2, v4, :cond_11

    .line 264
    iput v7, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    .line 265
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f06004b

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->text:Ljava/lang/String;

    .line 266
    invoke-direct {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->animateRotateForward()V

    .line 268
    :cond_11
    iget v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    neg-float v2, v2

    iget v5, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshViewHeight:F

    cmpg-float v2, v2, v5

    if-gez v2, :cond_12

    iget v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    if-ne v2, v7, :cond_12

    .line 269
    iput v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    .line 270
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f06004a

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->text:Ljava/lang/String;

    .line 271
    invoke-direct {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->animateRotateBackward()V

    .line 274
    :cond_12
    iget v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    cmpl-float v2, v2, v11

    if-lez v2, :cond_15

    .line 275
    iput v11, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    .line 276
    iget-object v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    iget v5, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    invoke-interface {v2, v5}, Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;->onScrolled(F)V

    .line 277
    :cond_13
    iput-boolean v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    .line 278
    iput-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->stoppedDraggingTop:Z

    .line 279
    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollExtent()I

    move-result v2

    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollRange()I

    move-result v5

    if-ge v2, v5, :cond_14

    .line 280
    invoke-direct {p0, v4}, Lcom/vkontakte/android/ui/RefreshableListView;->enableOverscroll(Z)V

    .line 286
    :cond_14
    iget v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    neg-float v2, v2

    float-to-double v5, v2

    iget v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->touchslop:F

    float-to-double v7, v2

    const-wide/high16 v9, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v7, v9

    cmpl-double v2, v5, v7

    if-gtz v2, :cond_16

    iget-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->needReturnTop:Z

    if-nez v2, :cond_16

    move v2, v3

    :goto_3
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->needReturnTop:Z

    goto/16 :goto_0

    .line 282
    :cond_15
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->invalidate()V

    .line 283
    iget-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->needReturnTop:Z

    if-eqz v2, :cond_14

    goto/16 :goto_1

    :cond_16
    move v2, v4

    .line 286
    goto :goto_3

    .line 287
    :cond_17
    iget-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->stoppedDraggingTop:Z

    if-eqz v2, :cond_4

    iput-boolean v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->stoppedDraggingTop:Z

    goto/16 :goto_0

    .line 304
    :cond_18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_1e

    iget-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    if-eqz v2, :cond_1e

    .line 305
    invoke-virtual {p0, p0, v3}, Lcom/vkontakte/android/ui/RefreshableListView;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 306
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v5, p0, Lcom/vkontakte/android/ui/RefreshableListView;->dragStartY:F

    sub-float/2addr v2, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    iput v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    .line 307
    iget-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->fromTop:Z

    if-eqz v2, :cond_20

    .line 308
    iget-object v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    iget v5, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    invoke-interface {v2, v5}, Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;->onScrolled(F)V

    .line 309
    :cond_19
    iget v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    iget v5, p0, Lcom/vkontakte/android/ui/RefreshableListView;->touchslop:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_1c

    .line 310
    iget-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshEnabled:Z

    if-eqz v2, :cond_1b

    iget v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    iget v5, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshViewHeight:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_1b

    iget v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    if-eq v2, v12, :cond_1b

    .line 311
    iput v12, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    .line 312
    iget v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    iget v5, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshViewHeight:F

    sub-float/2addr v2, v5

    iput v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    .line 313
    iget-object v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    iget v5, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    invoke-interface {v2, v5}, Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;->onScrolled(F)V

    .line 314
    :cond_1a
    iget-object v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 315
    iget-object v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    invoke-interface {v2}, Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;->onRefresh()V

    .line 317
    :cond_1b
    iput-boolean v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    .line 318
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->animateTopBounce()V

    .line 319
    iput-boolean v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->needReturnTop:Z

    goto/16 :goto_1

    .line 322
    :cond_1c
    iput-boolean v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    .line 323
    iput v11, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    .line 324
    iget-object v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    iget v5, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    invoke-interface {v2, v5}, Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;->onScrolled(F)V

    .line 325
    :cond_1d
    iput-boolean v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->needReturnTop:Z

    .line 357
    :goto_4
    invoke-direct {p0, v4}, Lcom/vkontakte/android/ui/RefreshableListView;->enableOverscroll(Z)V

    .line 360
    :cond_1e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_1f

    .line 361
    iput v11, p0, Lcom/vkontakte/android/ui/RefreshableListView;->dragStartY:F

    .line 368
    :cond_1f
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 372
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .local v1, "result":Z
    move v4, v1

    .line 374
    goto/16 :goto_1

    .line 330
    .end local v1    # "result":Z
    :cond_20
    iget-object v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    iget v5, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    invoke-interface {v2, v5}, Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;->onScrolled(F)V

    .line 331
    :cond_21
    iget v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    neg-float v2, v2

    iget v5, p0, Lcom/vkontakte/android/ui/RefreshableListView;->touchslop:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_25

    .line 332
    iget-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshEnabled:Z

    if-eqz v2, :cond_24

    iget v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    neg-float v2, v2

    iget v5, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshViewHeight:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_24

    iget v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    if-eq v2, v12, :cond_24

    .line 333
    iput v12, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    .line 334
    iget v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    iget v5, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshViewHeight:F

    add-float/2addr v2, v5

    iput v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    .line 335
    iget-object v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    iget v5, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    invoke-interface {v2, v5}, Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;->onScrolled(F)V

    .line 336
    :cond_22
    iget-object v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 337
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getFirstVisiblePosition()I

    move-result v2

    if-nez v2, :cond_23

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getLastVisiblePosition()I

    move-result v2

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v2, v5, :cond_23

    .line 339
    :try_start_1
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int v0, v2, v5

    .line 340
    .local v0, "p":I
    iget-object v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshContainer:Landroid/widget/FrameLayout;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v0, v6, v7}, Landroid/widget/FrameLayout;->setPadding(IIII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 343
    .end local v0    # "p":I
    :cond_23
    :goto_5
    iget-object v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    invoke-interface {v2}, Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;->onRefresh()V

    .line 345
    :cond_24
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/ui/RefreshableListView;->setSelection(I)V

    .line 346
    iput-boolean v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    .line 347
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->animateTopBounce()V

    .line 348
    iput-boolean v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->needReturnTop:Z

    goto/16 :goto_1

    .line 351
    :cond_25
    iput-boolean v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    .line 352
    iput v11, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    .line 353
    iget-object v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    iget v5, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    invoke-interface {v2, v5}, Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;->onScrolled(F)V

    .line 354
    :cond_26
    iput-boolean v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->needReturnTop:Z

    goto/16 :goto_4

    .line 382
    :cond_27
    const-string v2, "vk"

    const-string v3, "Super1"

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto/16 :goto_1

    .line 376
    :catch_0
    move-exception v2

    goto/16 :goto_1

    .line 341
    :catch_1
    move-exception v2

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
    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 672
    new-instance v0, Lcom/vkontakte/android/ui/RefreshableListView$5;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/RefreshableListView$5;-><init>(Lcom/vkontakte/android/ui/RefreshableListView;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/RefreshableListView;->post(Ljava/lang/Runnable;)Z

    .line 681
    return-void
.end method

.method public refreshDone()V
    .locals 1

    .prologue
    .line 403
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/RefreshableListView;->refreshDone(Z)V

    .line 404
    return-void
.end method

.method public refreshDone(Z)V
    .locals 6
    .param p1, "animate"    # Z

    .prologue
    const-wide/16 v4, 0x190

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 407
    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 445
    :goto_0
    return-void

    .line 408
    :cond_0
    iput v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    .line 409
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->text:Ljava/lang/String;

    .line 410
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->arrowRotation:F

    .line 411
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 412
    iput-boolean v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->animatingAfterRefresh:Z

    .line 413
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    if-eqz v0, :cond_1

    .line 414
    const v0, -0x39f36000    # -9000.0f

    iput v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->dragStartY:F

    .line 415
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    .line 417
    :cond_1
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->fromTop:Z

    if-eqz v0, :cond_4

    .line 418
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    .line 419
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    .line 420
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    iget v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    invoke-interface {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;->onScrolled(F)V

    .line 422
    :cond_2
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->animateTopBounce()V

    .line 423
    new-instance v0, Lcom/vkontakte/android/ui/RefreshableListView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/RefreshableListView$1;-><init>(Lcom/vkontakte/android/ui/RefreshableListView;)V

    invoke-virtual {p0, v0, v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 428
    :cond_3
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->animatingAfterRefresh:Z

    goto :goto_0

    .line 431
    :cond_4
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 432
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_6

    if-eqz p1, :cond_6

    .line 433
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    .line 434
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    iget v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    invoke-interface {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;->onScrolled(F)V

    .line 436
    :cond_5
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->animateTopBounce()V

    .line 437
    new-instance v0, Lcom/vkontakte/android/ui/RefreshableListView$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/RefreshableListView$2;-><init>(Lcom/vkontakte/android/ui/RefreshableListView;)V

    invoke-virtual {p0, v0, v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 442
    :cond_6
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->animatingAfterRefresh:Z

    goto/16 :goto_0
.end method

.method public scrollDown()V
    .locals 13

    .prologue
    const/4 v4, 0x0

    .line 610
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getCount()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    float-to-int v9, v0

    .line 611
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

    .line 612
    .local v10, "ev1":Landroid/view/MotionEvent;
    invoke-super {p0, v10}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v12

    .line 613
    .local v12, "rr":Z
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    const/16 v0, 0xa

    if-lt v11, v0, :cond_0

    .line 620
    new-instance v0, Lcom/vkontakte/android/ui/RefreshableListView$4;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/RefreshableListView$4;-><init>(Lcom/vkontakte/android/ui/RefreshableListView;)V

    .line 623
    mul-int/lit8 v1, v9, 0xb

    int-to-long v1, v1

    .line 620
    invoke-virtual {p0, v0, v1, v2}, Lcom/vkontakte/android/ui/RefreshableListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 624
    return-void

    .line 614
    :cond_0
    move v8, v11

    .line 615
    .local v8, "_i":I
    new-instance v0, Lcom/vkontakte/android/ui/RefreshableListView$3;

    invoke-direct {v0, p0, v8}, Lcom/vkontakte/android/ui/RefreshableListView$3;-><init>(Lcom/vkontakte/android/ui/RefreshableListView;I)V

    .line 618
    mul-int v1, v9, v11

    int-to-long v1, v1

    .line 615
    invoke-virtual {p0, v0, v1, v2}, Lcom/vkontakte/android/ui/RefreshableListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 613
    add-int/lit8 v11, v11, 0x1

    goto :goto_0
.end method

.method public setArrowResource(I)V
    .locals 0
    .param p1, "r"    # I

    .prologue
    .line 503
    invoke-virtual {p0, p1, p1}, Lcom/vkontakte/android/ui/RefreshableListView;->setArrowResource(II)V

    .line 504
    return-void
.end method

.method public setArrowResource(II)V
    .locals 1
    .param p1, "r"    # I
    .param p2, "rf"    # I

    .prologue
    .line 498
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->arrowBitmap:Landroid/graphics/Bitmap;

    .line 499
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->arrowFlipBitmap:Landroid/graphics/Bitmap;

    .line 500
    return-void
.end method

.method public setDraggingEnabled(Z)V
    .locals 0
    .param p1, "draggingEnabled"    # Z

    .prologue
    .line 668
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingEnabled:Z

    .line 669
    return-void
.end method

.method public setFromTop(Z)V
    .locals 0
    .param p1, "fromTop"    # Z

    .prologue
    .line 199
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->fromTop:Z

    .line 200
    return-void
.end method

.method public setHighlightAfterClick(Z)V
    .locals 0
    .param p1, "highlightAfterClick"    # Z

    .prologue
    .line 660
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->highlightAfterClick:Z

    .line 661
    return-void
.end method

.method public setOffset(F)V
    .locals 0
    .param p1, "o"    # F

    .prologue
    .line 463
    iput p1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->offset:F

    .line 464
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 0

    .prologue
    .line 399
    .local p1, "l":Landroid/widget/AdapterView$OnItemLongClickListener;, "Landroid/widget/AdapterView$OnItemLongClickListener;"
    iput-object p1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->longClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 400
    return-void
.end method

.method public setOnRefreshListener(Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;)V
    .locals 0
    .param p1, "l"    # Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    .prologue
    .line 580
    iput-object p1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    .line 581
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 641
    iput-object p1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 642
    return-void
.end method

.method public setProgressResource(I)V
    .locals 2
    .param p1, "r"    # I

    .prologue
    .line 507
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshView:Landroid/view/View;

    const v1, 0x7f080134

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 508
    return-void
.end method

.method public setRefreshEnabled(Z)V
    .locals 0
    .param p1, "refreshEnabled"    # Z

    .prologue
    .line 627
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshEnabled:Z

    .line 628
    return-void
.end method

.method public setTextColor(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    const/4 v2, 0x0

    .line 511
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 512
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtextPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 513
    return-void
.end method

.method public setTopColor(I)V
    .locals 1
    .param p1, "c"    # I

    .prologue
    .line 493
    iput p1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->pullBG:I

    .line 494
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 495
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 14
    .param p1, "pos"    # I

    .prologue
    .line 693
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getFirstVisiblePosition()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 694
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/ui/RefreshableListView;->setSelection(I)V

    .line 736
    :goto_0
    return-void

    .line 697
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_1

    .line 698
    iget-object v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    const/4 v2, 0x2

    invoke-interface {v1, p0, v2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 699
    const/4 v1, 0x0

    const/16 v2, 0x12c

    invoke-virtual {p0, p1, v1, v2}, Lcom/vkontakte/android/ui/RefreshableListView;->smoothScrollToPositionFromTop(III)V

    .line 700
    new-instance v1, Lcom/vkontakte/android/ui/RefreshableListView$6;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/ui/RefreshableListView$6;-><init>(Lcom/vkontakte/android/ui/RefreshableListView;I)V

    .line 705
    const-wide/16 v12, 0x15e

    .line 700
    invoke-virtual {p0, v1, v12, v13}, Lcom/vkontakte/android/ui/RefreshableListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 708
    :cond_1
    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 709
    .local v6, "itrp":Landroid/view/animation/DecelerateInterpolator;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 710
    .local v4, "startTime":J
    const-wide/16 v9, 0x12c

    .line 711
    .local v9, "duration":J
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getFirstVisiblePosition()I

    move-result v3

    .line 712
    .local v3, "startPos":I
    const/4 v8, 0x0

    .line 713
    .local v8, "avg":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildCount()I

    move-result v1

    if-lt v11, v1, :cond_2

    .line 716
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildCount()I

    move-result v1

    div-int v7, v8, v1

    .line 717
    .local v7, "itemHeight":I
    new-instance v0, Lcom/vkontakte/android/ui/RefreshableListView$7;

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/vkontakte/android/ui/RefreshableListView$7;-><init>(Lcom/vkontakte/android/ui/RefreshableListView;IIJLandroid/view/animation/DecelerateInterpolator;I)V

    .line 735
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/RefreshableListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 714
    .end local v0    # "r":Ljava/lang/Runnable;
    .end local v7    # "itemHeight":I
    :cond_2
    invoke-virtual {p0, v11}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v8, v1

    .line 713
    add-int/lit8 v11, v11, 0x1

    goto :goto_1
.end method
