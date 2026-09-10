.class Lcom/vkontakte/android/ui/MenuOverlayView$6;
.super Ljava/lang/Object;
.source "MenuOverlayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/MenuOverlayView;->setMode(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

.field private final synthetic val$m:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/MenuOverlayView;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/MenuOverlayView$6;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    iput p2, p0, Lcom/vkontakte/android/ui/MenuOverlayView$6;->val$m:I

    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 472
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 473
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView$6;->val$m:I

    if-nez v1, :cond_1

    .line 474
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 485
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView$6;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    iget v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView$6;->val$m:I

    invoke-static {v1, v2}, Lcom/vkontakte/android/ui/MenuOverlayView;->access$19(Lcom/vkontakte/android/ui/MenuOverlayView;I)V

    .line 486
    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView$6;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-virtual {v1, v4}, Lcom/vkontakte/android/ui/MenuOverlayView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 487
    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView$6;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->requestLayout()V

    .line 488
    return-void

    .line 475
    :cond_1
    iget v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView$6;->val$m:I

    if-ne v1, v2, :cond_2

    .line 476
    const/high16 v1, 0x423c0000    # 47.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 477
    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView$6;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-static {v1, v2}, Lcom/vkontakte/android/ui/MenuOverlayView;->access$15(Lcom/vkontakte/android/ui/MenuOverlayView;Z)V

    goto :goto_0

    .line 478
    :cond_2
    iget v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView$6;->val$m:I

    if-ne v1, v4, :cond_0

    .line 479
    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView$6;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-static {v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->access$16(Lcom/vkontakte/android/ui/MenuOverlayView;)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 480
    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView$6;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-static {v1, v2}, Lcom/vkontakte/android/ui/MenuOverlayView;->access$15(Lcom/vkontakte/android/ui/MenuOverlayView;Z)V

    .line 481
    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView$6;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-static {v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->access$17(Lcom/vkontakte/android/ui/MenuOverlayView;)Lcom/vkontakte/android/MenuListView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/vkontakte/android/MenuListView;->setTranslationX(F)V

    .line 482
    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView$6;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-static {v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->access$17(Lcom/vkontakte/android/ui/MenuOverlayView;)Lcom/vkontakte/android/MenuListView;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/MenuListView;->setAlpha(F)V

    .line 483
    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView$6;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-static {v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->access$18(Lcom/vkontakte/android/ui/MenuOverlayView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0
.end method
