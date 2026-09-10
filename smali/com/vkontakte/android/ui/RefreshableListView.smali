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

    .line 77
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 46
    iput v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    .line 47
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->needReturnTop:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->stoppedDraggingTop:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->animatingAfterRefresh:Z

    .line 50
    const/high16 v0, 0x425c0000    # 55.0f

    iput v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshViewHeight:F

    .line 51
    iput v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    .line 54
    iput v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->arrowRotation:F

    .line 56
    const-string v0, "Pull to refresh"

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->text:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtext:Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    .line 60
    const v0, -0x151516

    iput v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->pullBG:I

    .line 61
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshEnabled:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->click:Z

    iput-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingEnabled:Z

    .line 62
    iput v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->clickStartY:F

    .line 65
    iput v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->scrollState:I

    iput v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->prevScrollState:I

    .line 66
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->highlightAfterClick:Z

    .line 68
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawShadow:Z

    .line 69
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->eventCanceled:Z

    .line 70
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->fromTop:Z

    .line 71
    iput v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->offset:F

    .line 74
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->skipNextHighlight:Z

    .line 78
    invoke-direct {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->init()V

    .line 79
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

    .line 88
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    iput v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    .line 47
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->needReturnTop:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->stoppedDraggingTop:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->animatingAfterRefresh:Z

    .line 50
    const/high16 v0, 0x425c0000    # 55.0f

    iput v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshViewHeight:F

    .line 51
    iput v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    .line 54
    iput v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->arrowRotation:F

    .line 56
    const-string v0, "Pull to refresh"

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->text:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtext:Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    .line 60
    const v0, -0x151516

    iput v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->pullBG:I

    .line 61
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshEnabled:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->click:Z

    iput-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingEnabled:Z

    .line 62
    iput v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->clickStartY:F

    .line 65
    iput v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->scrollState:I

    iput v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->prevScrollState:I

    .line 66
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->highlightAfterClick:Z

    .line 68
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawShadow:Z

    .line 69
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->eventCanceled:Z

    .line 70
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->fromTop:Z

    .line 71
    iput v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->offset:F

    .line 74
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->skipNextHighlight:Z

    .line 89
    invoke-direct {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->init()V

    .line 90
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

    .line 93
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    iput v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    .line 47
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->needReturnTop:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->stoppedDraggingTop:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->animatingAfterRefresh:Z

    .line 50
    const/high16 v0, 0x425c0000    # 55.0f

    iput v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshViewHeight:F

    .line 51
    iput v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    .line 54
    iput v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->arrowRotation:F

    .line 56
    const-string v0, "Pull to refresh"

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->text:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtext:Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    .line 60
    const v0, -0x151516

    iput v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->pullBG:I

    .line 61
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshEnabled:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->click:Z

    iput-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingEnabled:Z

    .line 62
    iput v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->clickStartY:F

    .line 65
    iput v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->scrollState:I

    iput v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->prevScrollState:I

    .line 66
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->highlightAfterClick:Z

    .line 68
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawShadow:Z

    .line 69
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->eventCanceled:Z

    .line 70
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->fromTop:Z

    .line 71
    iput v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->offset:F

    .line 74
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->skipNextHighlight:Z

    .line 94
    invoke-direct {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->init()V

    .line 95
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

    .line 82
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 46
    iput v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    .line 47
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->needReturnTop:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->stoppedDraggingTop:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->animatingAfterRefresh:Z

    .line 50
    const/high16 v0, 0x425c0000    # 55.0f

    iput v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshViewHeight:F

    .line 51
    iput v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    .line 54
    iput v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->arrowRotation:F

    .line 56
    const-string v0, "Pull to refresh"

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->text:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtext:Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    .line 60
    const v0, -0x151516

    iput v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->pullBG:I

    .line 61
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshEnabled:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->click:Z

    iput-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingEnabled:Z

    .line 62
    iput v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->clickStartY:F

    .line 65
    iput v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->scrollState:I

    iput v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->prevScrollState:I

    .line 66
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->highlightAfterClick:Z

    .line 68
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawShadow:Z

    .line 69
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->eventCanceled:Z

    .line 70
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->fromTop:Z

    .line 71
    iput v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->offset:F

    .line 74
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->skipNextHighlight:Z

    .line 83
    iput-boolean p2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->fromTop:Z

    .line 84
    invoke-direct {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->init()V

    .line 85
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ui/RefreshableListView;Z)V
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->animatingAfterRefresh:Z

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/ui/RefreshableListView;Z)V
    .locals 0

    .prologue
    .line 159
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
    .line 57
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/ui/RefreshableListView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtext:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lcom/vkontakte/android/ui/RefreshableListView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/ui/RefreshableListView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtext:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/ui/RefreshableListView;I)V
    .locals 0

    .prologue
    .line 51
    iput p1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    return-void
.end method

.method static synthetic access$8(Lcom/vkontakte/android/ui/RefreshableListView;F)V
    .locals 0

    .prologue
    .line 46
    iput p1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    return-void
.end method

.method private animateRotateBackward()V
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->bwdAnim:Lcom/vkontakte/android/MethodAnimation;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/RefreshableListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 511
    return-void
.end method

.method private animateRotateForward()V
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->fwdAnim:Lcom/vkontakte/android/MethodAnimation;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/RefreshableListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 506
    return-void
.end method

.method private checkParentView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 206
    if-nez p1, :cond_0

    .line 214
    :goto_0
    return-void

    .line 207
    :cond_0
    instance-of v0, p1, Lcom/vkontakte/android/ui/ViewPager;

    if-eqz v0, :cond_1

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawShadow:Z

    goto :goto_0

    .line 212
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/vkontakte/android/ui/RefreshableListView;->checkParentView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 213
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private enableOverscroll(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    const/4 v0, 0x0

    .line 160
    iget-object v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->msetOverScrollMode:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 162
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

    .line 164
    :cond_0
    :goto_1
    return-void

    .line 162
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private init()V
    .locals 8

    .prologue
    const v7, 0x358637bd    # 1.0E-6f

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 98
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->touchslop:F

    .line 99
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f03003d

    invoke-static {v0, v1, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshView:Landroid/view/View;

    .line 100
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshContainer:Landroid/widget/FrameLayout;

    .line 101
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 102
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshView:Landroid/view/View;

    const v1, 0x7f06011c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshView:Landroid/view/View;

    const v1, 0x7f06011b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshView:Landroid/view/View;

    const v1, 0x7f06011d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090051

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 107
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshView:Landroid/view/View;

    const v1, 0x7f06011c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020224

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshView:Landroid/view/View;

    const v1, -0x151516

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 109
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->fromTop:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/RefreshableListView;->addHeaderView(Landroid/view/View;)V

    .line 114
    :goto_0
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->density:F

    .line 115
    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshViewHeight:F

    iget v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->density:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshViewHeight:F

    .line 116
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02018c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->arrowBitmap:Landroid/graphics/Bitmap;

    .line 118
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->textPaint:Landroid/graphics/Paint;

    .line 119
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 120
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->textPaint:Landroid/graphics/Paint;

    const v1, -0x99999a

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->textPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, -0x1

    invoke-virtual {v0, v7, v6, v1, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 122
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->textPaint:Landroid/graphics/Paint;

    sget-object v1, Lcom/vkontakte/android/Global;->boldFont:Landroid/graphics/Typeface;

    invoke-static {v1, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 123
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->textPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41600000    # 14.0f

    iget v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->density:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 125
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtextPaint:Landroid/graphics/Paint;

    .line 126
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 127
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtextPaint:Landroid/graphics/Paint;

    const v1, -0x99999a

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 128
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, -0x1

    invoke-virtual {v0, v7, v6, v1, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 129
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtextPaint:Landroid/graphics/Paint;

    sget-object v1, Lcom/vkontakte/android/Global;->regFont:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 130
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

    .line 132
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->fromTop:Z

    if-eqz v0, :cond_1

    const v0, 0x7f09004e

    :goto_1
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->text:Ljava/lang/String;

    .line 134
    new-instance v0, Lcom/vkontakte/android/MethodAnimation;

    const-string v1, "onAnimRotateBackward"

    invoke-direct {v0, p0, v1, v5}, Lcom/vkontakte/android/MethodAnimation;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->bwdAnim:Lcom/vkontakte/android/MethodAnimation;

    .line 135
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->bwdAnim:Lcom/vkontakte/android/MethodAnimation;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/MethodAnimation;->setDuration(J)V

    .line 136
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->bwdAnim:Lcom/vkontakte/android/MethodAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/MethodAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 138
    new-instance v0, Lcom/vkontakte/android/MethodAnimation;

    const-string v1, "onAnimRotateForward"

    invoke-direct {v0, p0, v1, v5}, Lcom/vkontakte/android/MethodAnimation;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->fwdAnim:Lcom/vkontakte/android/MethodAnimation;

    .line 139
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->fwdAnim:Lcom/vkontakte/android/MethodAnimation;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/MethodAnimation;->setDuration(J)V

    .line 140
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->fwdAnim:Lcom/vkontakte/android/MethodAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/MethodAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 143
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/ui/RefreshableListView;->setDrawingCacheEnabled(Z)V

    .line 144
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/ui/RefreshableListView;->setAnimationCacheEnabled(Z)V

    .line 145
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/ui/RefreshableListView;->setScrollingCacheEnabled(Z)V

    .line 148
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/RefreshableListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 150
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

    .line 153
    :goto_2
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 155
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 156
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 157
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshContainer:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 112
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/RefreshableListView;->addFooterView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 132
    :cond_1
    const v0, 0x7f09004f

    goto/16 :goto_1

    .line 151
    :catch_0
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method public addHeaderView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 176
    invoke-static {p1}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 177
    invoke-super {p0, p1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 178
    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "sel"    # Z

    .prologue
    .line 181
    invoke-static {p1}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 182
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 183
    return-void
.end method

.method public animateTopBounce()V
    .locals 3

    .prologue
    .line 485
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->clearAnimation()V

    .line 486
    iget v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    iput v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->animStartOffset:F

    .line 487
    new-instance v0, Lcom/vkontakte/android/MethodAnimation;

    const-string v1, "onAnim"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/vkontakte/android/MethodAnimation;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 488
    .local v0, "ma":Lcom/vkontakte/android/MethodAnimation;
    const/16 v1, 0x15e

    iget v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/MethodAnimation;->setDuration(J)V

    .line 489
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/MethodAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 490
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/RefreshableListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 497
    return-void
.end method

.method public computeVerticalScrollExtent()I
    .locals 2

    .prologue
    .line 609
    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollExtent()I

    move-result v0

    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollRange()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 610
    const/16 v0, 0xc8

    .line 612
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

    .line 616
    iget-boolean v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->fromTop:Z

    if-eqz v3, :cond_0

    .line 617
    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollRange()I

    move-result v3

    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollExtent()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v0, v3, -0x64

    .line 618
    .local v0, "maxscroll":I
    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollOffset()I

    move-result v3

    add-int/lit8 v3, v3, -0x64

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 619
    .local v1, "offset":I
    int-to-float v3, v1

    int-to-float v4, v0

    div-float v2, v3, v4

    .line 621
    .local v2, "scp":F
    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollRange()I

    move-result v3

    add-int/lit16 v3, v3, -0xc8

    add-int/lit8 v3, v3, 0x64

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    .line 628
    :goto_0
    return v3

    .line 623
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

    .line 624
    .restart local v0    # "maxscroll":I
    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollOffset()I

    move-result v3

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 625
    .restart local v1    # "offset":I
    int-to-float v3, v1

    int-to-float v4, v0

    div-float v2, v3, v4

    .line 626
    .restart local v2    # "scp":F
    const/high16 v3, -0x40800000    # -1.0f

    cmpg-float v3, v2, v3

    if-gez v3, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 628
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
    const/high16 v10, 0x40e00000    # 7.0f

    const/4 v9, 0x0

    const/high16 v12, 0x42600000    # 56.0f

    const/4 v11, 0x3

    const/4 v1, 0x0

    .line 535
    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-boolean v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->fromTop:Z

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    .line 536
    :cond_0
    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->fromTop:Z

    if-nez v0, :cond_1

    iput v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    .line 537
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 538
    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 539
    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    if-eq v0, v11, :cond_2

    iget-boolean v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->animatingAfterRefresh:Z

    if-eqz v0, :cond_9

    .line 540
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 550
    :goto_0
    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 551
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 553
    .local v5, "bgPaint":Landroid/graphics/Paint;
    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->pullBG:I

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 554
    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    neg-float v2, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    move-object v0, p1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 556
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshEnabled:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    if-eq v0, v11, :cond_3

    .line 557
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 558
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

    .line 559
    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->density:F

    mul-float/2addr v0, v10

    const/high16 v2, 0x41a80000    # 21.0f

    iget v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->density:F

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->arrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float v0, v2

    const/high16 v2, -0x3dbc0000    # -49.0f

    iget v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->density:F

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v7, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 560
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->arrowBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v7, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 562
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->text:Ljava/lang/String;

    iget v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->density:F

    mul-float/2addr v2, v12

    const/high16 v3, -0x3e000000    # -32.0f

    iget v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->density:F

    mul-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget-object v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 563
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtext:Ljava/lang/String;

    iget v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->density:F

    mul-float/2addr v2, v12

    const/high16 v3, -0x3ea00000    # -14.0f

    iget v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->density:F

    mul-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget-object v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 566
    .end local v5    # "bgPaint":Landroid/graphics/Paint;
    .end local v7    # "arrowMatrix":Landroid/graphics/Matrix;
    :cond_3
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->fromTop:Z

    if-nez v0, :cond_5

    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    .line 567
    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->offset:F

    neg-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 568
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 569
    .restart local v5    # "bgPaint":Landroid/graphics/Paint;
    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->pullBG:I

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 570
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

    .line 572
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshEnabled:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    if-eq v0, v11, :cond_4

    .line 573
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 574
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

    .line 575
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

    .line 576
    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->density:F

    mul-float/2addr v0, v10

    const/high16 v2, 0x41a80000    # 21.0f

    iget v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->density:F

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->arrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float v0, v2

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshViewHeight:F

    add-float/2addr v2, v3

    const/high16 v3, 0x42440000    # 49.0f

    iget v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->density:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v7, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 577
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->arrowBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v7, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 579
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->text:Ljava/lang/String;

    iget v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->density:F

    mul-float/2addr v2, v12

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshViewHeight:F

    add-float/2addr v3, v4

    const/high16 v4, 0x42000000    # 32.0f

    iget v10, p0, Lcom/vkontakte/android/ui/RefreshableListView;->density:F

    mul-float/2addr v4, v10

    sub-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget-object v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 580
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtext:Ljava/lang/String;

    iget v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->density:F

    mul-float/2addr v2, v12

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshViewHeight:F

    add-float/2addr v3, v4

    const/high16 v4, 0x41600000    # 14.0f

    iget v10, p0, Lcom/vkontakte/android/ui/RefreshableListView;->density:F

    mul-float/2addr v4, v10

    sub-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget-object v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 582
    .end local v7    # "arrowMatrix":Landroid/graphics/Matrix;
    :cond_4
    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->offset:F

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 586
    .end local v5    # "bgPaint":Landroid/graphics/Paint;
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 588
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawShadow:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_6

    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    if-ne v0, v11, :cond_8

    .line 589
    :cond_6
    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {v0}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    .line 590
    .local v8, "h":I
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getWidth()I

    move-result v1

    invoke-virtual {v0, v9, v9, v1, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 591
    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    iget v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshViewHeight:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v6, v0, v1

    .line 592
    .local v6, "a":F
    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    if-ne v0, v11, :cond_7

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->computeVerticalScrollOffset()I

    move-result v0

    if-nez v0, :cond_a

    const/16 v0, 0xff

    :goto_1
    int-to-float v6, v0

    .line 593
    :cond_7
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    float-to-int v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 594
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 597
    .end local v6    # "a":F
    .end local v8    # "h":I
    :cond_8
    return-void

    .line 547
    :cond_9
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .restart local v6    # "a":F
    .restart local v8    # "h":I
    :cond_a
    move v0, v9

    .line 592
    goto :goto_1
.end method

.method public getRefreshOffset()F
    .locals 1

    .prologue
    .line 604
    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    return v0
.end method

.method public isDraggingEnabled()Z
    .locals 1

    .prologue
    .line 687
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingEnabled:Z

    return v0
.end method

.method public isHighlightAfterClick()Z
    .locals 1

    .prologue
    .line 679
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->highlightAfterClick:Z

    return v0
.end method

.method public isRefreshEnabled()Z
    .locals 1

    .prologue
    .line 654
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshEnabled:Z

    return v0
.end method

.method public isRefreshing()Z
    .locals 2

    .prologue
    .line 186
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
    .locals 2
    .param p1, "time"    # F

    .prologue
    .line 514
    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->animStartOffset:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    .line 515
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    iget v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    invoke-interface {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;->onScrolled(F)V

    .line 516
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->invalidate()V

    .line 517
    return-void
.end method

.method public onAnimRotateBackward(F)V
    .locals 2
    .param p1, "time"    # F

    .prologue
    .line 525
    const/high16 v0, 0x43340000    # 180.0f

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->arrowRotation:F

    .line 526
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->invalidate()V

    .line 527
    return-void
.end method

.method public onAnimRotateForward(F)V
    .locals 1
    .param p1, "time"    # F

    .prologue
    .line 520
    const/high16 v0, 0x43340000    # 180.0f

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->arrowRotation:F

    .line 521
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->invalidate()V

    .line 522
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 201
    invoke-super {p0}, Landroid/widget/ListView;->onAttachedToWindow()V

    .line 202
    invoke-direct {p0, p0}, Lcom/vkontakte/android/ui/RefreshableListView;->checkParentView(Landroid/view/View;)V

    .line 203
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

    .line 710
    iget-object v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->longClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-nez v1, :cond_1

    .line 714
    :cond_0
    :goto_0
    return v0

    .line 711
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->skipNextHighlight:Z

    .line 712
    iget-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->eventCanceled:Z

    if-nez v1, :cond_0

    .line 713
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
    .line 197
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 669
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 670
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 674
    iput p2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->scrollState:I

    .line 675
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 676
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 222
    iget-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingEnabled:Z

    if-eqz v4, :cond_28

    .line 223
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_0

    .line 224
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->clickStartY:F

    .line 225
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->click:Z

    .line 226
    iget v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->scrollState:I

    iput v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->prevScrollState:I

    .line 227
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->eventCanceled:Z

    .line 230
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 231
    iget v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->clickStartY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/vkontakte/android/ui/RefreshableListView;->touchslop:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->click:Z

    .line 232
    :cond_1
    iget-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->fromTop:Z

    if-eqz v4, :cond_d

    .line 233
    iget-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->computeVerticalScrollOffset()I

    move-result v4

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->stoppedDraggingTop:Z

    if-nez v4, :cond_4

    iget v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->dragStartY:F

    const v5, -0x39f36000    # -9000.0f

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->animatingAfterRefresh:Z

    if-nez v4, :cond_4

    .line 234
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/vkontakte/android/ui/RefreshableListView;->enableOverscroll(Z)V

    .line 235
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    .line 236
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->dragStartY:F

    .line 237
    iget-object v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    invoke-interface {v4}, Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;->getLastUpdatedTime()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtext:Ljava/lang/String;

    .line 238
    :cond_2
    iget-object v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshView:Landroid/view/View;

    const v5, 0x7f06011e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtext:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshView:Landroid/view/View;

    const v5, 0x7f06011e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 240
    iget-object v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshView:Landroid/view/View;

    const v5, 0x7f06011d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 313
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_18

    iget-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    if-eqz v4, :cond_18

    .line 315
    const/4 v4, 0x0

    iput v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    .line 316
    const/4 v4, 0x0

    iput v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->dragStartY:F

    .line 317
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    .line 318
    const/4 v4, 0x1

    iput v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    .line 319
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->invalidate()V

    .line 320
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/vkontakte/android/ui/RefreshableListView;->enableOverscroll(Z)V

    .line 321
    new-instance v4, Lcom/vkontakte/android/ui/RefreshableListView$1;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/ui/RefreshableListView$1;-><init>(Lcom/vkontakte/android/ui/RefreshableListView;)V

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/ui/RefreshableListView;->post(Ljava/lang/Runnable;)Z

    .line 335
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->eventCanceled:Z

    .line 336
    const/4 v1, 0x1

    .line 432
    :goto_1
    return v1

    .line 242
    :cond_4
    iget-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    if-eqz v4, :cond_c

    .line 243
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lcom/vkontakte/android/ui/RefreshableListView;->dragStartY:F

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    .line 244
    iget-object v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    iget v5, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    invoke-interface {v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;->onScrolled(F)V

    .line 246
    :cond_5
    iget v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    iget v5, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshViewHeight:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6

    iget v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    .line 247
    const/4 v4, 0x2

    iput v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    .line 248
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090050

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->text:Ljava/lang/String;

    .line 249
    invoke-direct {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->animateRotateForward()V

    .line 251
    :cond_6
    iget v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    iget v5, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshViewHeight:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_7

    iget v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    .line 252
    const/4 v4, 0x1

    iput v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    .line 253
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09004e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->text:Ljava/lang/String;

    .line 254
    invoke-direct {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->animateRotateBackward()V

    .line 257
    :cond_7
    iget v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_a

    .line 258
    const/4 v4, 0x0

    iput v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    .line 259
    iget-object v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    iget v5, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    invoke-interface {v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;->onScrolled(F)V

    .line 260
    :cond_8
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    .line 261
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->stoppedDraggingTop:Z

    .line 262
    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollExtent()I

    move-result v4

    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollRange()I

    move-result v5

    if-ge v4, v5, :cond_9

    .line 263
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/vkontakte/android/ui/RefreshableListView;->enableOverscroll(Z)V

    .line 269
    :cond_9
    iget v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    float-to-double v4, v4

    iget v6, p0, Lcom/vkontakte/android/ui/RefreshableListView;->touchslop:F

    float-to-double v6, v6

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v6, v8

    cmpl-double v4, v4, v6

    if-gtz v4, :cond_b

    iget-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->needReturnTop:Z

    if-nez v4, :cond_b

    const/4 v4, 0x0

    :goto_2
    iput-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->needReturnTop:Z

    goto/16 :goto_0

    .line 265
    :cond_a
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->invalidate()V

    .line 266
    iget-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->needReturnTop:Z

    if-eqz v4, :cond_9

    const/4 v1, 0x1

    goto/16 :goto_1

    .line 269
    :cond_b
    const/4 v4, 0x1

    goto :goto_2

    .line 270
    :cond_c
    iget-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->stoppedDraggingTop:Z

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->stoppedDraggingTop:Z

    goto/16 :goto_0

    .line 272
    :cond_d
    iget-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    if-nez v4, :cond_f

    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollOffset()I

    move-result v4

    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollRange()I

    move-result v5

    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollExtent()I

    move-result v6

    sub-int/2addr v5, v6

    if-ne v4, v5, :cond_f

    iget-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->stoppedDraggingTop:Z

    if-nez v4, :cond_f

    iget v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->dragStartY:F

    const v5, -0x39f36000    # -9000.0f

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_f

    iget-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->animatingAfterRefresh:Z

    if-nez v4, :cond_f

    .line 273
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/vkontakte/android/ui/RefreshableListView;->enableOverscroll(Z)V

    .line 274
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    .line 275
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->dragStartY:F

    .line 276
    iget-object v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    invoke-interface {v4}, Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;->getLastUpdatedTime()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtext:Ljava/lang/String;

    .line 277
    :cond_e
    iget-object v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshView:Landroid/view/View;

    const v5, 0x7f06011e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtext:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshView:Landroid/view/View;

    const v5, 0x7f06011e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 279
    iget-object v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshView:Landroid/view/View;

    const v5, 0x7f06011d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextScaleX(F)V

    goto/16 :goto_0

    .line 281
    :cond_f
    iget-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    if-eqz v4, :cond_17

    .line 282
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lcom/vkontakte/android/ui/RefreshableListView;->dragStartY:F

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    .line 283
    iget-object v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    iget v5, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    neg-float v5, v5

    invoke-interface {v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;->onScrolled(F)V

    .line 285
    :cond_10
    iget v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    neg-float v4, v4

    iget v5, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshViewHeight:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_11

    iget v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_11

    .line 286
    const/4 v4, 0x2

    iput v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    .line 287
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090050

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->text:Ljava/lang/String;

    .line 288
    invoke-direct {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->animateRotateForward()V

    .line 290
    :cond_11
    iget v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    neg-float v4, v4

    iget v5, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshViewHeight:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_12

    iget v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_12

    .line 291
    const/4 v4, 0x1

    iput v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    .line 292
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09004f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->text:Ljava/lang/String;

    .line 293
    invoke-direct {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->animateRotateBackward()V

    .line 296
    :cond_12
    iget v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_15

    .line 297
    const/4 v4, 0x0

    iput v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    .line 298
    iget-object v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    if-eqz v4, :cond_13

    iget-object v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    iget v5, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    invoke-interface {v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;->onScrolled(F)V

    .line 299
    :cond_13
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    .line 300
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->stoppedDraggingTop:Z

    .line 301
    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollExtent()I

    move-result v4

    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollRange()I

    move-result v5

    if-ge v4, v5, :cond_14

    .line 302
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/vkontakte/android/ui/RefreshableListView;->enableOverscroll(Z)V

    .line 308
    :cond_14
    iget v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    neg-float v4, v4

    float-to-double v4, v4

    iget v6, p0, Lcom/vkontakte/android/ui/RefreshableListView;->touchslop:F

    float-to-double v6, v6

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v6, v8

    cmpl-double v4, v4, v6

    if-gtz v4, :cond_16

    iget-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->needReturnTop:Z

    if-nez v4, :cond_16

    const/4 v4, 0x0

    :goto_3
    iput-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->needReturnTop:Z

    goto/16 :goto_0

    .line 304
    :cond_15
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->invalidate()V

    .line 305
    iget-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->needReturnTop:Z

    if-eqz v4, :cond_14

    const/4 v1, 0x1

    goto/16 :goto_1

    .line 308
    :cond_16
    const/4 v4, 0x1

    goto :goto_3

    .line 309
    :cond_17
    iget-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->stoppedDraggingTop:Z

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->stoppedDraggingTop:Z

    goto/16 :goto_0

    .line 339
    :cond_18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1e

    iget-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    if-eqz v4, :cond_1e

    .line 340
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lcom/vkontakte/android/ui/RefreshableListView;->dragStartY:F

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    .line 341
    iget-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->fromTop:Z

    if-eqz v4, :cond_20

    .line 342
    iget-object v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    if-eqz v4, :cond_19

    iget-object v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    iget v5, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    invoke-interface {v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;->onScrolled(F)V

    .line 343
    :cond_19
    iget v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    iget v5, p0, Lcom/vkontakte/android/ui/RefreshableListView;->touchslop:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1c

    .line 344
    iget-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshEnabled:Z

    if-eqz v4, :cond_1b

    iget v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    iget v5, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshViewHeight:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1b

    iget v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1b

    .line 345
    const/4 v4, 0x3

    iput v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    .line 346
    iget v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    iget v5, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshViewHeight:F

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    .line 347
    iget-object v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    if-eqz v4, :cond_1a

    iget-object v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    iget v5, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    invoke-interface {v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;->onScrolled(F)V

    .line 348
    :cond_1a
    iget-object v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 349
    iget-object v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    if-eqz v4, :cond_1b

    iget-object v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    invoke-interface {v4}, Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;->onRefresh()V

    .line 351
    :cond_1b
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    .line 352
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->animateTopBounce()V

    .line 353
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->needReturnTop:Z

    .line 355
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 357
    :cond_1c
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    .line 358
    const/4 v4, 0x0

    iput v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    .line 359
    iget-object v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    if-eqz v4, :cond_1d

    iget-object v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    iget v5, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    invoke-interface {v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;->onScrolled(F)V

    .line 360
    :cond_1d
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->needReturnTop:Z

    .line 392
    :goto_4
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/vkontakte/android/ui/RefreshableListView;->enableOverscroll(Z)V

    .line 395
    :cond_1e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1f

    .line 396
    const/4 v4, 0x0

    iput v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->dragStartY:F

    .line 399
    iget-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->highlightAfterClick:Z

    if-eqz v4, :cond_1f

    iget-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->click:Z

    if-eqz v4, :cond_1f

    iget v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->prevScrollState:I

    if-nez v4, :cond_1f

    iget-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->eventCanceled:Z

    if-nez v4, :cond_1f

    .line 400
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p0, v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->pointToPosition(II)I

    move-result v2

    .line 402
    .local v2, "spos":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_1f

    :try_start_0
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getFirstVisiblePosition()I

    move-result v4

    if-lt v2, v4, :cond_1f

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getLastVisiblePosition()I

    move-result v4

    if-gt v2, v4, :cond_1f

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/widget/ListAdapter;->isEnabled(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1f

    .line 403
    const/4 v3, 0x0

    .line 404
    .local v3, "v":Landroid/view/View;
    :try_start_1
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int v4, v2, v4

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildAt(I)Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    .line 405
    :goto_5
    :try_start_2
    iget-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->skipNextHighlight:Z

    if-eqz v4, :cond_27

    .line 406
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->skipNextHighlight:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 417
    .end local v2    # "spos":I
    .end local v3    # "v":Landroid/view/View;
    :cond_1f
    :goto_6
    :try_start_3
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 421
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v1

    .line 423
    .local v1, "result":Z
    goto/16 :goto_1

    .line 365
    .end local v1    # "result":Z
    :cond_20
    iget-object v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    if-eqz v4, :cond_21

    iget-object v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    iget v5, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    invoke-interface {v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;->onScrolled(F)V

    .line 366
    :cond_21
    iget v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    neg-float v4, v4

    iget v5, p0, Lcom/vkontakte/android/ui/RefreshableListView;->touchslop:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_25

    .line 367
    iget-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshEnabled:Z

    if-eqz v4, :cond_24

    iget v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    neg-float v4, v4

    iget v5, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshViewHeight:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_24

    iget v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_24

    .line 368
    const/4 v4, 0x3

    iput v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    .line 369
    iget v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    iget v5, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshViewHeight:F

    add-float/2addr v4, v5

    iput v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    .line 370
    iget-object v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    if-eqz v4, :cond_22

    iget-object v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    iget v5, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    invoke-interface {v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;->onScrolled(F)V

    .line 371
    :cond_22
    iget-object v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 372
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getFirstVisiblePosition()I

    move-result v4

    if-nez v4, :cond_23

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getLastVisiblePosition()I

    move-result v4

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_23

    .line 374
    :try_start_4
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int v0, v4, v5

    .line 375
    .local v0, "p":I
    iget-object v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshContainer:Landroid/widget/FrameLayout;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/widget/FrameLayout;->setPadding(IIII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 378
    .end local v0    # "p":I
    :cond_23
    :goto_7
    iget-object v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    if-eqz v4, :cond_24

    iget-object v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    invoke-interface {v4}, Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;->onRefresh()V

    .line 380
    :cond_24
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/ui/RefreshableListView;->setSelection(I)V

    .line 381
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    .line 382
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->animateTopBounce()V

    .line 383
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->needReturnTop:Z

    .line 384
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 386
    :cond_25
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    .line 387
    const/4 v4, 0x0

    iput v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    .line 388
    iget-object v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    if-eqz v4, :cond_26

    iget-object v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    iget v5, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    invoke-interface {v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;->onScrolled(F)V

    .line 389
    :cond_26
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->needReturnTop:Z

    goto/16 :goto_4

    .line 408
    .restart local v2    # "spos":I
    .restart local v3    # "v":Landroid/view/View;
    :cond_27
    if-eqz v3, :cond_1f

    :try_start_5
    invoke-static {v3}, Lcom/vkontakte/android/Global;->setViewSel(Landroid/view/View;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_6

    .line 411
    .end local v3    # "v":Landroid/view/View;
    :catch_0
    move-exception v4

    goto/16 :goto_6

    .line 425
    .end local v2    # "spos":I
    :catch_1
    move-exception v4

    .line 429
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 431
    :cond_28
    const-string v4, "vk"

    const-string v5, "Super1"

    invoke-static {v4, v5}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto/16 :goto_1

    .line 404
    .restart local v2    # "spos":I
    .restart local v3    # "v":Landroid/view/View;
    :catch_2
    move-exception v4

    goto/16 :goto_5

    .line 376
    .end local v2    # "spos":I
    .end local v3    # "v":Landroid/view/View;
    :catch_3
    move-exception v4

    goto :goto_7
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
    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 695
    new-instance v0, Lcom/vkontakte/android/ui/RefreshableListView$6;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/RefreshableListView$6;-><init>(Lcom/vkontakte/android/ui/RefreshableListView;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/RefreshableListView;->post(Ljava/lang/Runnable;)Z

    .line 706
    return-void
.end method

.method public refreshDone()V
    .locals 1

    .prologue
    .line 440
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/RefreshableListView;->refreshDone(Z)V

    .line 441
    return-void
.end method

.method public refreshDone(Z)V
    .locals 6
    .param p1, "animate"    # Z

    .prologue
    const-wide/16 v4, 0x190

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 444
    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 482
    :goto_0
    return-void

    .line 445
    :cond_0
    iput v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    .line 446
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->text:Ljava/lang/String;

    .line 447
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->arrowRotation:F

    .line 448
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 449
    iput-boolean v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->animatingAfterRefresh:Z

    .line 450
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    if-eqz v0, :cond_1

    .line 451
    const v0, -0x39f36000    # -9000.0f

    iput v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->dragStartY:F

    .line 452
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    .line 454
    :cond_1
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->fromTop:Z

    if-eqz v0, :cond_4

    .line 455
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    .line 456
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    .line 457
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    iget v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    invoke-interface {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;->onScrolled(F)V

    .line 459
    :cond_2
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->animateTopBounce()V

    .line 460
    new-instance v0, Lcom/vkontakte/android/ui/RefreshableListView$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/RefreshableListView$2;-><init>(Lcom/vkontakte/android/ui/RefreshableListView;)V

    invoke-virtual {p0, v0, v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 465
    :cond_3
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->animatingAfterRefresh:Z

    goto :goto_0

    .line 468
    :cond_4
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 469
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_6

    if-eqz p1, :cond_6

    .line 470
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    .line 471
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    iget v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    invoke-interface {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;->onScrolled(F)V

    .line 473
    :cond_5
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->animateTopBounce()V

    .line 474
    new-instance v0, Lcom/vkontakte/android/ui/RefreshableListView$3;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/RefreshableListView$3;-><init>(Lcom/vkontakte/android/ui/RefreshableListView;)V

    invoke-virtual {p0, v0, v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 479
    :cond_6
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->animatingAfterRefresh:Z

    goto/16 :goto_0
.end method

.method public scrollDown()V
    .locals 13

    .prologue
    const/4 v4, 0x0

    .line 633
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getCount()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    float-to-int v9, v0

    .line 634
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

    .line 635
    .local v10, "ev1":Landroid/view/MotionEvent;
    invoke-super {p0, v10}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v12

    .line 636
    .local v12, "rr":Z
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    const/16 v0, 0xa

    if-lt v11, v0, :cond_0

    .line 643
    new-instance v0, Lcom/vkontakte/android/ui/RefreshableListView$5;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/RefreshableListView$5;-><init>(Lcom/vkontakte/android/ui/RefreshableListView;)V

    .line 646
    mul-int/lit8 v1, v9, 0xb

    int-to-long v1, v1

    .line 643
    invoke-virtual {p0, v0, v1, v2}, Lcom/vkontakte/android/ui/RefreshableListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 647
    return-void

    .line 637
    :cond_0
    move v8, v11

    .line 638
    .local v8, "_i":I
    new-instance v0, Lcom/vkontakte/android/ui/RefreshableListView$4;

    invoke-direct {v0, p0, v8}, Lcom/vkontakte/android/ui/RefreshableListView$4;-><init>(Lcom/vkontakte/android/ui/RefreshableListView;I)V

    .line 641
    mul-int v1, v9, v11

    int-to-long v1, v1

    .line 638
    invoke-virtual {p0, v0, v1, v2}, Lcom/vkontakte/android/ui/RefreshableListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 636
    add-int/lit8 v11, v11, 0x1

    goto :goto_0
.end method

.method public setDraggingEnabled(Z)V
    .locals 0
    .param p1, "draggingEnabled"    # Z

    .prologue
    .line 691
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingEnabled:Z

    .line 692
    return-void
.end method

.method public setFromTop(Z)V
    .locals 0
    .param p1, "fromTop"    # Z

    .prologue
    .line 217
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->fromTop:Z

    .line 218
    return-void
.end method

.method public setHighlightAfterClick(Z)V
    .locals 0
    .param p1, "highlightAfterClick"    # Z

    .prologue
    .line 683
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->highlightAfterClick:Z

    .line 684
    return-void
.end method

.method public setOffset(F)V
    .locals 0
    .param p1, "o"    # F

    .prologue
    .line 500
    iput p1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->offset:F

    .line 501
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 0

    .prologue
    .line 436
    .local p1, "l":Landroid/widget/AdapterView$OnItemLongClickListener;, "Landroid/widget/AdapterView$OnItemLongClickListener;"
    iput-object p1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->longClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 437
    return-void
.end method

.method public setOnRefreshListener(Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;)V
    .locals 0
    .param p1, "l"    # Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    .prologue
    .line 600
    iput-object p1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    .line 601
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 664
    iput-object p1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 665
    return-void
.end method

.method public setRefreshEnabled(Z)V
    .locals 0
    .param p1, "refreshEnabled"    # Z

    .prologue
    .line 650
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshEnabled:Z

    .line 651
    return-void
.end method

.method public setTopColor(I)V
    .locals 1
    .param p1, "c"    # I

    .prologue
    .line 530
    iput p1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->pullBG:I

    .line 531
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 532
    return-void
.end method
