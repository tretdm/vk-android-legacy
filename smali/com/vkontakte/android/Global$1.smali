.class Lcom/vkontakte/android/Global$1;
.super Ljava/lang/Object;
.source "Global.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$duration:I

.field private final synthetic val$t:J

.field private final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(JILandroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-wide p1, p0, Lcom/vkontakte/android/Global$1;->val$t:J

    iput p3, p0, Lcom/vkontakte/android/Global$1;->val$duration:I

    iput-object p4, p0, Lcom/vkontakte/android/Global$1;->val$view:Landroid/view/View;

    .line 734
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 749
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/vkontakte/android/Global$1;->val$t:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/vkontakte/android/Global$1;->val$duration:I

    add-int/lit8 v2, v2, -0x14

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 752
    :goto_0
    return-void

    .line 750
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/Global$1;->val$view:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 751
    iget-object v0, p0, Lcom/vkontakte/android/Global$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 745
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 739
    return-void
.end method
