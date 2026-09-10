.class Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$1;
.super Ljava/lang/Object;
.source "PagerSlidingTabStrip.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->notifyDataSetChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;


# direct methods
.method constructor <init>(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$1;->this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 227
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 228
    iget-object v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$1;->this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-virtual {v0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 233
    :goto_0
    iget-object v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$1;->this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$1;->this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-static {v1}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->access$4(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-static {v0, v1}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->access$0(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;I)V

    .line 234
    iget-object v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$1;->this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$1;->this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-static {v1}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->access$5(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->access$3(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;II)V

    .line 236
    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$1;->this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-virtual {v0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
