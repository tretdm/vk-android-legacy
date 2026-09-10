.class Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$2;
.super Ljava/lang/Object;
.source "StickyGridHeadersGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

.field private final synthetic val$header:Landroid/view/View;

.field private final synthetic val$performHeaderClick:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;


# direct methods
.method constructor <init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Landroid/view/View;Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$2;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iput-object p2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$2;->val$header:Landroid/view/View;

    iput-object p3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$2;->val$performHeaderClick:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 324
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$2;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    const/4 v1, -0x1

    iput v1, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mTouchMode:I

    .line 325
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$2;->val$header:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 326
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$2;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v0, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setPressed(Z)V

    .line 327
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$2;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget-boolean v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$2;->val$performHeaderClick:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;

    invoke-virtual {v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;->run()V

    .line 330
    :cond_0
    return-void
.end method
