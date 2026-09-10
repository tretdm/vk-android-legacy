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

.field private fwdAnim:Lcom/vkontakte/android/MethodAnimation;

.field private highlightAfterClick:Z

.field private listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

.field private longClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private msetOverScrollMode:Ljava/lang/reflect/Method;

.field private needReturnTop:Z

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

    .line 74
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 45
    iput v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    .line 46
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->needReturnTop:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->stoppedDraggingTop:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->animatingAfterRefresh:Z

    .line 49
    const/high16 v0, 0x425c0000    # 55.0f

    iput v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshViewHeight:F

    .line 50
    iput v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    .line 53
    iput v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->arrowRotation:F

    .line 55
    const-string v0, "Pull to refresh"

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->text:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtext:Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    .line 59
    const v0, -0x151516

    iput v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->pullBG:I

    .line 60
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshEnabled:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->click:Z

    iput-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingEnabled:Z

    .line 61
    iput v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->clickStartY:F

    .line 64
    iput v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->scrollState:I

    iput v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->prevScrollState:I

    .line 65
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->highlightAfterClick:Z

    .line 67
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawShadow:Z

    .line 68
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->eventCanceled:Z

    .line 71
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->skipNextHighlight:Z

    .line 75
    invoke-direct {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->init()V

    .line 76
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

    .line 79
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    iput v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    .line 46
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->needReturnTop:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->stoppedDraggingTop:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->animatingAfterRefresh:Z

    .line 49
    const/high16 v0, 0x425c0000    # 55.0f

    iput v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshViewHeight:F

    .line 50
    iput v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    .line 53
    iput v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->arrowRotation:F

    .line 55
    const-string v0, "Pull to refresh"

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->text:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtext:Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    .line 59
    const v0, -0x151516

    iput v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->pullBG:I

    .line 60
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshEnabled:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->click:Z

    iput-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingEnabled:Z

    .line 61
    iput v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->clickStartY:F

    .line 64
    iput v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->scrollState:I

    iput v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->prevScrollState:I

    .line 65
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->highlightAfterClick:Z

    .line 67
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawShadow:Z

    .line 68
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->eventCanceled:Z

    .line 71
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->skipNextHighlight:Z

    .line 80
    invoke-direct {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->init()V

    .line 81
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

    .line 84
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    iput v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    .line 46
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->needReturnTop:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->stoppedDraggingTop:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->animatingAfterRefresh:Z

    .line 49
    const/high16 v0, 0x425c0000    # 55.0f

    iput v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshViewHeight:F

    .line 50
    iput v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    .line 53
    iput v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->arrowRotation:F

    .line 55
    const-string v0, "Pull to refresh"

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->text:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtext:Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    .line 59
    const v0, -0x151516

    iput v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->pullBG:I

    .line 60
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshEnabled:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->click:Z

    iput-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingEnabled:Z

    .line 61
    iput v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->clickStartY:F

    .line 64
    iput v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->scrollState:I

    iput v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->prevScrollState:I

    .line 65
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->highlightAfterClick:Z

    .line 67
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawShadow:Z

    .line 68
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->eventCanceled:Z

    .line 71
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->skipNextHighlight:Z

    .line 85
    invoke-direct {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->init()V

    .line 86
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ui/RefreshableListView;Z)V
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->animatingAfterRefresh:Z

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/ui/RefreshableListView;Z)V
    .locals 0

    .prologue
    .line 146
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
    .line 56
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/ui/RefreshableListView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtext:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lcom/vkontakte/android/ui/RefreshableListView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/ui/RefreshableListView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtext:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/ui/RefreshableListView;I)V
    .locals 0

    .prologue
    .line 50
    iput p1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    return-void
.end method

.method static synthetic access$8(Lcom/vkontakte/android/ui/RefreshableListView;F)V
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    return-void
.end method

.method private animateRotateBackward()V
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->bwdAnim:Lcom/vkontakte/android/MethodAnimation;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/RefreshableListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 397
    return-void
.end method

.method private animateRotateForward()V
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->fwdAnim:Lcom/vkontakte/android/MethodAnimation;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/RefreshableListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 392
    return-void
.end method

.method private checkParentView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 193
    if-nez p1, :cond_0

    .line 201
    :goto_0
    return-void

    .line 194
    :cond_0
    instance-of v0, p1, Lcom/vkontakte/android/ui/ViewPager;

    if-eqz v0, :cond_1

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawShadow:Z

    goto :goto_0

    .line 199
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/vkontakte/android/ui/RefreshableListView;->checkParentView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private enableOverscroll(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    const/4 v0, 0x0

    .line 147
    iget-object v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->msetOverScrollMode:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 149
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

    .line 151
    :cond_0
    :goto_1
    return-void

    .line 149
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 150
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

    .line 89
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->touchslop:F

    .line 90
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030035

    invoke-static {v0, v1, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshView:Landroid/view/View;

    .line 91
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshContainer:Landroid/widget/FrameLayout;

    .line 92
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 93
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshView:Landroid/view/View;

    const v1, 0x7f06011b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshView:Landroid/view/View;

    const v1, 0x7f06011a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshView:Landroid/view/View;

    const v1, 0x7f06011c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090050

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 98
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshView:Landroid/view/View;

    const v1, 0x7f06011b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020206

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshView:Landroid/view/View;

    const v1, -0x151516

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 100
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/RefreshableListView;->addHeaderView(Landroid/view/View;)V

    .line 101
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->density:F

    .line 102
    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshViewHeight:F

    iget v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->density:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshViewHeight:F

    .line 103
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020174

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->arrowBitmap:Landroid/graphics/Bitmap;

    .line 105
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->textPaint:Landroid/graphics/Paint;

    .line 106
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 107
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->textPaint:Landroid/graphics/Paint;

    const v1, -0x99999a

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->textPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, -0x1

    invoke-virtual {v0, v7, v6, v1, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 109
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->textPaint:Landroid/graphics/Paint;

    sget-object v1, Lcom/vkontakte/android/Global;->boldFont:Landroid/graphics/Typeface;

    invoke-static {v1, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 110
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->textPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41600000    # 14.0f

    iget v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->density:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 112
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtextPaint:Landroid/graphics/Paint;

    .line 113
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 114
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtextPaint:Landroid/graphics/Paint;

    const v1, -0x99999a

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, -0x1

    invoke-virtual {v0, v7, v6, v1, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 116
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtextPaint:Landroid/graphics/Paint;

    sget-object v1, Lcom/vkontakte/android/Global;->regFont:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 117
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

    .line 119
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->text:Ljava/lang/String;

    .line 121
    new-instance v0, Lcom/vkontakte/android/MethodAnimation;

    const-string v1, "onAnimRotateBackward"

    invoke-direct {v0, p0, v1, v5}, Lcom/vkontakte/android/MethodAnimation;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->bwdAnim:Lcom/vkontakte/android/MethodAnimation;

    .line 122
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->bwdAnim:Lcom/vkontakte/android/MethodAnimation;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/MethodAnimation;->setDuration(J)V

    .line 123
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->bwdAnim:Lcom/vkontakte/android/MethodAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/MethodAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 125
    new-instance v0, Lcom/vkontakte/android/MethodAnimation;

    const-string v1, "onAnimRotateForward"

    invoke-direct {v0, p0, v1, v5}, Lcom/vkontakte/android/MethodAnimation;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->fwdAnim:Lcom/vkontakte/android/MethodAnimation;

    .line 126
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->fwdAnim:Lcom/vkontakte/android/MethodAnimation;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/MethodAnimation;->setDuration(J)V

    .line 127
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->fwdAnim:Lcom/vkontakte/android/MethodAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/MethodAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 130
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/ui/RefreshableListView;->setDrawingCacheEnabled(Z)V

    .line 131
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/ui/RefreshableListView;->setAnimationCacheEnabled(Z)V

    .line 132
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/ui/RefreshableListView;->setScrollingCacheEnabled(Z)V

    .line 135
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/RefreshableListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 137
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

    .line 140
    :goto_0
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 142
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 143
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 144
    return-void

    .line 138
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public addHeaderView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 163
    invoke-static {p1}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 164
    invoke-super {p0, p1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 165
    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "sel"    # Z

    .prologue
    .line 168
    invoke-static {p1}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 169
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 170
    return-void
.end method

.method public animateTopBounce()V
    .locals 3

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->clearAnimation()V

    .line 376
    iget v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    iput v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->animStartOffset:F

    .line 377
    new-instance v0, Lcom/vkontakte/android/MethodAnimation;

    const-string v1, "onAnim"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/vkontakte/android/MethodAnimation;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 378
    .local v0, "ma":Lcom/vkontakte/android/MethodAnimation;
    const/16 v1, 0x15e

    iget v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/MethodAnimation;->setDuration(J)V

    .line 379
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/MethodAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 380
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/RefreshableListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 387
    return-void
.end method

.method public computeVerticalScrollExtent()I
    .locals 2

    .prologue
    .line 470
    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollExtent()I

    move-result v0

    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollRange()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 471
    const/16 v0, 0xc8

    .line 473
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollExtent()I

    move-result v0

    goto :goto_0
.end method

.method public computeVerticalScrollOffset()I
    .locals 5

    .prologue
    .line 477
    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollRange()I

    move-result v3

    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollExtent()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v0, v3, -0x64

    .line 478
    .local v0, "maxscroll":I
    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollOffset()I

    move-result v3

    add-int/lit8 v3, v3, -0x64

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 479
    .local v1, "offset":I
    int-to-float v3, v1

    int-to-float v4, v0

    div-float v2, v3, v4

    .line 481
    .local v2, "scp":F
    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollRange()I

    move-result v3

    add-int/lit16 v3, v3, -0xc8

    add-int/lit8 v3, v3, 0x64

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    return v3
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v11, 0x42600000    # 56.0f

    const/4 v9, 0x0

    const/4 v10, 0x3

    const/4 v1, 0x0

    .line 421
    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iput v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    .line 422
    :cond_0
    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 423
    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    if-eq v0, v10, :cond_1

    iget-boolean v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->animatingAfterRefresh:Z

    if-eqz v0, :cond_6

    .line 424
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 434
    :goto_0
    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 435
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 437
    .local v5, "bgPaint":Landroid/graphics/Paint;
    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->pullBG:I

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 438
    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    neg-float v2, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    move-object v0, p1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 440
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshEnabled:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    if-eq v0, v10, :cond_2

    .line 441
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 442
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

    .line 443
    const/high16 v0, 0x40e00000    # 7.0f

    iget v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->density:F

    mul-float/2addr v0, v2

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

    .line 444
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->arrowBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v7, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 446
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->text:Ljava/lang/String;

    iget v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->density:F

    mul-float/2addr v2, v11

    const/high16 v3, -0x3e000000    # -32.0f

    iget v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->density:F

    mul-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget-object v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 447
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtext:Ljava/lang/String;

    iget v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->density:F

    mul-float/2addr v2, v11

    const/high16 v3, -0x3ea00000    # -14.0f

    iget v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->density:F

    mul-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget-object v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 451
    .end local v5    # "bgPaint":Landroid/graphics/Paint;
    .end local v7    # "arrowMatrix":Landroid/graphics/Matrix;
    :cond_2
    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    neg-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 453
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawShadow:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_3

    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    if-ne v0, v10, :cond_5

    .line 454
    :cond_3
    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {v0}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    .line 455
    .local v8, "h":I
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getWidth()I

    move-result v1

    invoke-virtual {v0, v9, v9, v1, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 456
    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    iget v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshViewHeight:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v6, v0, v1

    .line 457
    .local v6, "a":F
    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    if-ne v0, v10, :cond_4

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->computeVerticalScrollOffset()I

    move-result v0

    if-nez v0, :cond_7

    const/16 v0, 0xff

    :goto_1
    int-to-float v6, v0

    .line 458
    :cond_4
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    float-to-int v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 459
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 462
    .end local v6    # "a":F
    .end local v8    # "h":I
    :cond_5
    return-void

    .line 431
    :cond_6
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .restart local v6    # "a":F
    .restart local v8    # "h":I
    :cond_7
    move v0, v9

    .line 457
    goto :goto_1
.end method

.method public isDraggingEnabled()Z
    .locals 1

    .prologue
    .line 539
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingEnabled:Z

    return v0
.end method

.method public isHighlightAfterClick()Z
    .locals 1

    .prologue
    .line 531
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->highlightAfterClick:Z

    return v0
.end method

.method public isRefreshEnabled()Z
    .locals 1

    .prologue
    .line 506
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshEnabled:Z

    return v0
.end method

.method public isRefreshing()Z
    .locals 2

    .prologue
    .line 173
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
    .line 400
    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->animStartOffset:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    .line 401
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    iget v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    invoke-interface {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;->onScrolled(F)V

    .line 402
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->invalidate()V

    .line 403
    return-void
.end method

.method public onAnimRotateBackward(F)V
    .locals 2
    .param p1, "time"    # F

    .prologue
    .line 411
    const/high16 v0, 0x43340000    # 180.0f

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->arrowRotation:F

    .line 412
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->invalidate()V

    .line 413
    return-void
.end method

.method public onAnimRotateForward(F)V
    .locals 1
    .param p1, "time"    # F

    .prologue
    .line 406
    const/high16 v0, 0x43340000    # 180.0f

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->arrowRotation:F

    .line 407
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->invalidate()V

    .line 408
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 188
    invoke-super {p0}, Landroid/widget/ListView;->onAttachedToWindow()V

    .line 189
    invoke-direct {p0, p0}, Lcom/vkontakte/android/ui/RefreshableListView;->checkParentView(Landroid/view/View;)V

    .line 190
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

    .line 562
    iget-object v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->longClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-nez v1, :cond_1

    .line 566
    :cond_0
    :goto_0
    return v0

    .line 563
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->skipNextHighlight:Z

    .line 564
    iget-boolean v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->eventCanceled:Z

    if-nez v1, :cond_0

    .line 565
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
    .line 184
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 521
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 522
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 526
    iput p2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->scrollState:I

    .line 527
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 528
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v13, 0x3

    const/4 v7, 0x2

    const/4 v12, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 205
    iget-boolean v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingEnabled:Z

    if-eqz v3, :cond_1c

    .line 206
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    .line 207
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->clickStartY:F

    .line 208
    iput-boolean v5, p0, Lcom/vkontakte/android/ui/RefreshableListView;->click:Z

    .line 209
    iget v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->scrollState:I

    iput v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->prevScrollState:I

    .line 210
    iput-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->eventCanceled:Z

    .line 213
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v7, :cond_3

    .line 214
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

    .line 215
    :cond_1
    iget-boolean v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->computeVerticalScrollOffset()I

    move-result v3

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->stoppedDraggingTop:Z

    if-nez v3, :cond_4

    iget v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->dragStartY:F

    const v6, -0x39f36000    # -9000.0f

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->animatingAfterRefresh:Z

    if-nez v3, :cond_4

    .line 216
    invoke-direct {p0, v4}, Lcom/vkontakte/android/ui/RefreshableListView;->enableOverscroll(Z)V

    .line 217
    iput-boolean v5, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    .line 218
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->dragStartY:F

    .line 219
    iget-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    invoke-interface {v3}, Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;->getLastUpdatedTime()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtext:Ljava/lang/String;

    .line 220
    :cond_2
    iget-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshView:Landroid/view/View;

    const v6, 0x7f06011d

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/vkontakte/android/ui/RefreshableListView;->subtext:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshView:Landroid/view/View;

    const v6, 0x7f06011d

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 222
    iget-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshView:Landroid/view/View;

    const v6, 0x7f06011c

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 255
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v13, :cond_13

    iget-boolean v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    if-eqz v3, :cond_13

    .line 256
    const-string v3, "vk"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "==== Cancel touch "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iput v12, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    .line 258
    iput v12, p0, Lcom/vkontakte/android/ui/RefreshableListView;->dragStartY:F

    .line 259
    iput-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    .line 260
    iput v5, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    .line 261
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->invalidate()V

    .line 262
    invoke-direct {p0, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->enableOverscroll(Z)V

    .line 263
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0, v3, v4}, Lcom/vkontakte/android/ui/RefreshableListView;->pointToPosition(II)I

    move-result v1

    .line 264
    .local v1, "spos":I
    const-string v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "pos = "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const/4 v3, -0x1

    if-eq v1, v3, :cond_12

    :try_start_0
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getFirstVisiblePosition()I

    move-result v3

    if-lt v1, v3, :cond_12

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getLastVisiblePosition()I

    move-result v3

    if-gt v1, v3, :cond_12

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_12

    .line 267
    const/4 v2, 0x0

    .line 268
    .local v2, "v":Landroid/view/View;
    :try_start_1
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildAt(I)Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v2

    .line 269
    :goto_1
    if-eqz v2, :cond_11

    :try_start_2
    const-string v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "view = "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    instance-of v3, v2, Lcom/vkontakte/android/HLRelativeLayout;

    if-eqz v3, :cond_d

    move-object v0, v2

    check-cast v0, Lcom/vkontakte/android/HLRelativeLayout;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/vkontakte/android/HLRelativeLayout;->deselect()V

    .line 278
    :goto_2
    const-string v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "sel = "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->isSelected()Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 282
    .end local v2    # "v":Landroid/view/View;
    :goto_3
    iput-boolean v5, p0, Lcom/vkontakte/android/ui/RefreshableListView;->eventCanceled:Z

    .line 338
    .end local v1    # "spos":I
    :goto_4
    return v5

    .line 224
    :cond_4
    iget-boolean v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    if-eqz v3, :cond_c

    .line 225
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v6, p0, Lcom/vkontakte/android/ui/RefreshableListView;->dragStartY:F

    sub-float/2addr v3, v6

    iput v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    .line 226
    iget-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    iget v6, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    invoke-interface {v3, v6}, Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;->onScrolled(F)V

    .line 228
    :cond_5
    iget v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    iget v6, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshViewHeight:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_6

    iget v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    if-ne v3, v5, :cond_6

    .line 229
    iput v7, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    .line 230
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f09004f

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->text:Ljava/lang/String;

    .line 231
    invoke-direct {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->animateRotateForward()V

    .line 233
    :cond_6
    iget v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    iget v6, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshViewHeight:F

    cmpg-float v3, v3, v6

    if-gez v3, :cond_7

    iget v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    if-ne v3, v7, :cond_7

    .line 234
    iput v5, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    .line 235
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f09004e

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->text:Ljava/lang/String;

    .line 236
    invoke-direct {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->animateRotateBackward()V

    .line 239
    :cond_7
    iget v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    cmpg-float v3, v3, v12

    if-gez v3, :cond_a

    .line 240
    iput v12, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    .line 241
    iget-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    iget v6, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    invoke-interface {v3, v6}, Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;->onScrolled(F)V

    .line 242
    :cond_8
    iput-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    .line 243
    iput-boolean v5, p0, Lcom/vkontakte/android/ui/RefreshableListView;->stoppedDraggingTop:Z

    .line 244
    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollExtent()I

    move-result v3

    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollRange()I

    move-result v6

    if-ge v3, v6, :cond_9

    .line 245
    invoke-direct {p0, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->enableOverscroll(Z)V

    .line 251
    :cond_9
    iget v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    float-to-double v6, v3

    iget v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->touchslop:F

    float-to-double v8, v3

    const-wide/high16 v10, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v8, v10

    cmpl-double v3, v6, v8

    if-gtz v3, :cond_b

    iget-boolean v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->needReturnTop:Z

    if-nez v3, :cond_b

    move v3, v4

    :goto_5
    iput-boolean v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->needReturnTop:Z

    goto/16 :goto_0

    .line 247
    :cond_a
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->invalidate()V

    .line 248
    iget-boolean v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->needReturnTop:Z

    if-eqz v3, :cond_9

    goto/16 :goto_4

    :cond_b
    move v3, v5

    .line 251
    goto :goto_5

    .line 252
    :cond_c
    iget-boolean v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->stoppedDraggingTop:Z

    if-eqz v3, :cond_3

    iput-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->stoppedDraggingTop:Z

    goto/16 :goto_0

    .line 271
    .restart local v1    # "spos":I
    .restart local v2    # "v":Landroid/view/View;
    :cond_d
    :try_start_3
    instance-of v3, v2, Lcom/vkontakte/android/HLLinearLayout;

    if-eqz v3, :cond_e

    move-object v0, v2

    check-cast v0, Lcom/vkontakte/android/HLLinearLayout;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/vkontakte/android/HLLinearLayout;->deselect()V

    goto/16 :goto_2

    .line 281
    .end local v2    # "v":Landroid/view/View;
    :catch_0
    move-exception v3

    goto/16 :goto_3

    .line 272
    .restart local v2    # "v":Landroid/view/View;
    :cond_e
    instance-of v3, v2, Lcom/vkontakte/android/NewsItemView;

    if-eqz v3, :cond_f

    move-object v0, v2

    check-cast v0, Lcom/vkontakte/android/NewsItemView;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/vkontakte/android/NewsItemView;->deselect()V

    goto/16 :goto_2

    .line 273
    :cond_f
    instance-of v3, v2, Lcom/vkontakte/android/MessageView;

    if-eqz v3, :cond_10

    move-object v0, v2

    check-cast v0, Lcom/vkontakte/android/MessageView;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/vkontakte/android/MessageView;->deselect()V

    goto/16 :goto_2

    .line 275
    :cond_10
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    .line 276
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    goto/16 :goto_2

    .line 279
    :cond_11
    const-string v3, "vk"

    const-string v4, "view is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 280
    .end local v2    # "v":Landroid/view/View;
    :cond_12
    const-string v3, "vk"

    const-string v4, "pos out of range"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_3

    .line 286
    .end local v1    # "spos":I
    :cond_13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v5, :cond_19

    iget-boolean v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    if-eqz v3, :cond_19

    .line 287
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v6, p0, Lcom/vkontakte/android/ui/RefreshableListView;->dragStartY:F

    sub-float/2addr v3, v6

    iput v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    .line 288
    iget-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    iget v6, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    invoke-interface {v3, v6}, Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;->onScrolled(F)V

    .line 289
    :cond_14
    iget v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    iget v6, p0, Lcom/vkontakte/android/ui/RefreshableListView;->touchslop:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_17

    .line 290
    iget-boolean v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshEnabled:Z

    if-eqz v3, :cond_16

    iget v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    iget v6, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshViewHeight:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_16

    iget v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    if-eq v3, v13, :cond_16

    .line 291
    iput v13, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    .line 292
    iget v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    iget v6, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshViewHeight:F

    sub-float/2addr v3, v6

    iput v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    .line 293
    iget-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    iget v6, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    invoke-interface {v3, v6}, Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;->onScrolled(F)V

    .line 294
    :cond_15
    iget-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 295
    iget-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    if-eqz v3, :cond_16

    iget-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    invoke-interface {v3}, Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;->onRefresh()V

    .line 297
    :cond_16
    iput-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    .line 298
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->animateTopBounce()V

    .line 299
    iput-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->needReturnTop:Z

    goto/16 :goto_4

    .line 302
    :cond_17
    iput-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    .line 303
    iput v12, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    .line 304
    iget-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    if-eqz v3, :cond_18

    iget-object v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    iget v6, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    invoke-interface {v3, v6}, Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;->onScrolled(F)V

    .line 305
    :cond_18
    iput-boolean v4, p0, Lcom/vkontakte/android/ui/RefreshableListView;->needReturnTop:Z

    .line 309
    invoke-direct {p0, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->enableOverscroll(Z)V

    .line 312
    :cond_19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v5, :cond_1a

    .line 313
    iput v12, p0, Lcom/vkontakte/android/ui/RefreshableListView;->dragStartY:F

    .line 316
    iget-boolean v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->highlightAfterClick:Z

    if-eqz v3, :cond_1a

    iget-boolean v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->click:Z

    if-eqz v3, :cond_1a

    iget v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->prevScrollState:I

    if-nez v3, :cond_1a

    .line 317
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0, v3, v4}, Lcom/vkontakte/android/ui/RefreshableListView;->pointToPosition(II)I

    move-result v1

    .line 319
    .restart local v1    # "spos":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1a

    :try_start_4
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getFirstVisiblePosition()I

    move-result v3

    if-lt v1, v3, :cond_1a

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getLastVisiblePosition()I

    move-result v3

    if-gt v1, v3, :cond_1a

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result v3

    if-eqz v3, :cond_1a

    .line 320
    const/4 v2, 0x0

    .line 321
    .restart local v2    # "v":Landroid/view/View;
    :try_start_5
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildAt(I)Landroid/view/View;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v2

    .line 322
    :goto_6
    :try_start_6
    iget-boolean v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->skipNextHighlight:Z

    if-eqz v3, :cond_1b

    .line 323
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->skipNextHighlight:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 332
    .end local v1    # "spos":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1a
    :goto_7
    :try_start_7
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    move-result v5

    goto/16 :goto_4

    .line 325
    .restart local v1    # "spos":I
    .restart local v2    # "v":Landroid/view/View;
    :cond_1b
    if-eqz v2, :cond_1a

    :try_start_8
    invoke-static {v2}, Lcom/vkontakte/android/Global;->setViewSel(Landroid/view/View;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_7

    .line 328
    .end local v2    # "v":Landroid/view/View;
    :catch_1
    move-exception v3

    goto :goto_7

    .line 338
    .end local v1    # "spos":I
    :cond_1c
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    goto/16 :goto_4

    .line 333
    :catch_2
    move-exception v3

    goto/16 :goto_4

    .line 321
    .restart local v1    # "spos":I
    .restart local v2    # "v":Landroid/view/View;
    :catch_3
    move-exception v3

    goto :goto_6

    .line 268
    :catch_4
    move-exception v3

    goto/16 :goto_1
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
    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 547
    new-instance v0, Lcom/vkontakte/android/ui/RefreshableListView$4;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/RefreshableListView$4;-><init>(Lcom/vkontakte/android/ui/RefreshableListView;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/RefreshableListView;->post(Ljava/lang/Runnable;)Z

    .line 558
    return-void
.end method

.method public refreshDone()V
    .locals 1

    .prologue
    .line 346
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/RefreshableListView;->refreshDone(Z)V

    .line 347
    return-void
.end method

.method public refreshDone(Z)V
    .locals 4
    .param p1, "animate"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 350
    iget v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 372
    :goto_0
    return-void

    .line 351
    :cond_0
    iput v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->state:I

    .line 352
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->text:Ljava/lang/String;

    .line 353
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->arrowRotation:F

    .line 354
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 355
    iput-boolean v3, p0, Lcom/vkontakte/android/ui/RefreshableListView;->animatingAfterRefresh:Z

    .line 356
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    if-eqz v0, :cond_1

    .line 357
    const v0, -0x39f36000    # -9000.0f

    iput v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->dragStartY:F

    .line 358
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingTop:Z

    .line 360
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    .line 361
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    .line 362
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    iget v1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->drawOffset:F

    invoke-interface {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;->onScrolled(F)V

    .line 364
    :cond_2
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->animateTopBounce()V

    .line 365
    new-instance v0, Lcom/vkontakte/android/ui/RefreshableListView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/RefreshableListView$1;-><init>(Lcom/vkontakte/android/ui/RefreshableListView;)V

    .line 368
    const-wide/16 v1, 0x190

    .line 365
    invoke-virtual {p0, v0, v1, v2}, Lcom/vkontakte/android/ui/RefreshableListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 370
    :cond_3
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/RefreshableListView;->animatingAfterRefresh:Z

    goto :goto_0
.end method

.method public scrollDown()V
    .locals 12

    .prologue
    const/4 v4, 0x0

    .line 485
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RefreshableListView;->getCount()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    float-to-int v9, v0

    .line 486
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

    .line 487
    .local v10, "ev1":Landroid/view/MotionEvent;
    invoke-super {p0, v10}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 488
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    const/16 v0, 0xa

    if-lt v11, v0, :cond_0

    .line 495
    new-instance v0, Lcom/vkontakte/android/ui/RefreshableListView$3;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/RefreshableListView$3;-><init>(Lcom/vkontakte/android/ui/RefreshableListView;)V

    .line 498
    mul-int/lit8 v1, v9, 0xb

    int-to-long v1, v1

    .line 495
    invoke-virtual {p0, v0, v1, v2}, Lcom/vkontakte/android/ui/RefreshableListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 499
    return-void

    .line 489
    :cond_0
    move v8, v11

    .line 490
    .local v8, "_i":I
    new-instance v0, Lcom/vkontakte/android/ui/RefreshableListView$2;

    invoke-direct {v0, p0, v8}, Lcom/vkontakte/android/ui/RefreshableListView$2;-><init>(Lcom/vkontakte/android/ui/RefreshableListView;I)V

    .line 493
    mul-int v1, v9, v11

    int-to-long v1, v1

    .line 490
    invoke-virtual {p0, v0, v1, v2}, Lcom/vkontakte/android/ui/RefreshableListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 488
    add-int/lit8 v11, v11, 0x1

    goto :goto_0
.end method

.method public setDraggingEnabled(Z)V
    .locals 0
    .param p1, "draggingEnabled"    # Z

    .prologue
    .line 543
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->draggingEnabled:Z

    .line 544
    return-void
.end method

.method public setHighlightAfterClick(Z)V
    .locals 0
    .param p1, "highlightAfterClick"    # Z

    .prologue
    .line 535
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->highlightAfterClick:Z

    .line 536
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 0

    .prologue
    .line 342
    .local p1, "l":Landroid/widget/AdapterView$OnItemLongClickListener;, "Landroid/widget/AdapterView$OnItemLongClickListener;"
    iput-object p1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->longClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 343
    return-void
.end method

.method public setOnRefreshListener(Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;)V
    .locals 0
    .param p1, "l"    # Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    .prologue
    .line 465
    iput-object p1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->listener:Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;

    .line 466
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 516
    iput-object p1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 517
    return-void
.end method

.method public setRefreshEnabled(Z)V
    .locals 0
    .param p1, "refreshEnabled"    # Z

    .prologue
    .line 502
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshEnabled:Z

    .line 503
    return-void
.end method

.method public setTopColor(I)V
    .locals 1
    .param p1, "c"    # I

    .prologue
    .line 416
    iput p1, p0, Lcom/vkontakte/android/ui/RefreshableListView;->pullBG:I

    .line 417
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView;->refreshView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 418
    return-void
.end method
