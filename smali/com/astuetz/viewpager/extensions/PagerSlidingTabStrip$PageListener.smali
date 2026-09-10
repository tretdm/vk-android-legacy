.class public Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$PageListener;
.super Ljava/lang/Object;
.source "PagerSlidingTabStrip.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PageListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;


# direct methods
.method public constructor <init>(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;)V
    .locals 0

    .prologue
    .line 499
    iput-object p1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$PageListener;->this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 518
    if-nez p1, :cond_0

    .line 519
    iget-object v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$PageListener;->this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$PageListener;->this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-static {v1}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->access$4(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->access$3(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;II)V

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$PageListener;->this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    iget-object v0, v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 523
    iget-object v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$PageListener;->this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    iget-object v0, v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 525
    :cond_1
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 504
    iget-object v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$PageListener;->this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-static {v0, p1}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->access$0(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;I)V

    .line 505
    iget-object v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$PageListener;->this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-static {v0, p2}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->access$1(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;F)V

    .line 507
    iget-object v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$PageListener;->this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$PageListener;->this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-static {v1}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->access$2(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    invoke-static {v0, p1, v1}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->access$3(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;II)V

    .line 509
    iget-object v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$PageListener;->this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-virtual {v0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->invalidate()V

    .line 511
    iget-object v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$PageListener;->this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    iget-object v0, v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$PageListener;->this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    iget-object v0, v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 514
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 529
    iget-object v1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$PageListener;->this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    iget-object v1, v1, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v1, :cond_0

    .line 530
    iget-object v1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$PageListener;->this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    iget-object v1, v1, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v1, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 532
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$PageListener;->this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-static {v1}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->access$2(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 533
    iget-object v1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$PageListener;->this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-static {v1}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->access$2(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 534
    return-void

    .line 532
    :cond_1
    iget-object v1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$PageListener;->this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-static {v1}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->access$2(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
