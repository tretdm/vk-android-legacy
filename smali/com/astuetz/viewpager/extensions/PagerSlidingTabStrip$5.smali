.class Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$5;
.super Ljava/lang/Object;
.source "PagerSlidingTabStrip.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->updateExpanded()V
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
    iput-object p1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$5;->this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 397
    iget-object v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$5;->this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-virtual {v0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 401
    iget-object v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$5;->this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-static {v0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->access$6(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;)V

    .line 402
    const/4 v0, 0x1

    return v0
.end method
