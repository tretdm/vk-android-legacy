.class Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$5;
.super Ljava/lang/Object;
.source "PagerSlidingTabStrip.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v10, -0x1

    const/4 v6, 0x0

    .line 391
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x10

    if-ge v7, v8, :cond_0

    .line 392
    iget-object v7, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$5;->this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-virtual {v7}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 398
    :goto_0
    iget-object v7, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$5;->this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-virtual {v7}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->getWidth()I

    move-result v4

    .line 399
    .local v4, "w":I
    const/4 v5, 0x0

    .line 400
    .local v5, "wSum":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v7, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$5;->this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-static {v7}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->access$2(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    if-lt v1, v7, :cond_1

    .line 405
    const-string v7, "vk"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Widths="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", view="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    sub-int v7, v4, v5

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    const/high16 v8, 0x42480000    # 50.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    if-ge v7, v8, :cond_2

    const/4 v0, 0x1

    .line 407
    .local v0, "expand":Z
    :goto_2
    const/4 v1, 0x0

    :goto_3
    iget-object v7, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$5;->this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-static {v7}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->access$2(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    if-lt v1, v7, :cond_3

    .line 419
    return-void

    .line 394
    .end local v0    # "expand":Z
    .end local v1    # "i":I
    .end local v4    # "w":I
    .end local v5    # "wSum":I
    :cond_0
    iget-object v7, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$5;->this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-virtual {v7}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 401
    .restart local v1    # "i":I
    .restart local v4    # "w":I
    .restart local v5    # "wSum":I
    :cond_1
    iget-object v7, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$5;->this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-static {v7}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->access$2(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 402
    .local v2, "tw":I
    const-string v7, "vk"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Tab "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " width = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    add-int/2addr v5, v2

    .line 400
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2    # "tw":I
    :cond_2
    move v0, v6

    .line 406
    goto :goto_2

    .line 408
    .restart local v0    # "expand":Z
    :cond_3
    iget-object v7, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$5;->this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-static {v7}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->access$2(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 409
    .local v3, "v":Landroid/view/View;
    if-eqz v0, :cond_4

    .line 410
    invoke-virtual {v3, v6, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 411
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v7, v10, v10, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 407
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 413
    :cond_4
    iget-object v7, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$5;->this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-static {v7}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->access$6(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;)I

    move-result v7

    iget-object v8, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$5;->this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-static {v8}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->access$6(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;)I

    move-result v8

    invoke-virtual {v3, v7, v6, v8, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 414
    iget-object v7, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$5;->this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-static {v7}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->access$7(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4
.end method
