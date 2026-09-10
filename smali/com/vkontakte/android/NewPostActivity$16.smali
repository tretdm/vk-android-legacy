.class Lcom/vkontakte/android/NewPostActivity$16;
.super Landroid/widget/BaseAdapter;
.source "NewPostActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewPostActivity;->showOptions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewPostActivity;

.field private final synthetic val$enabled:[Z

.field private final synthetic val$wrapped:Landroid/widget/ArrayAdapter;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewPostActivity;Landroid/widget/ArrayAdapter;[Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewPostActivity$16;->this$0:Lcom/vkontakte/android/NewPostActivity;

    iput-object p2, p0, Lcom/vkontakte/android/NewPostActivity$16;->val$wrapped:Landroid/widget/ArrayAdapter;

    iput-object p3, p0, Lcom/vkontakte/android/NewPostActivity$16;->val$enabled:[Z

    .line 548
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$16;->val$wrapped:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 557
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$16;->val$wrapped:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 562
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$16;->val$wrapped:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v3, 0x3e99999a    # 0.3f

    .line 568
    iget-object v2, p0, Lcom/vkontakte/android/NewPostActivity$16;->val$wrapped:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 569
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Lcom/vkontakte/android/NewPostActivity$16;->val$enabled:[Z

    aget-boolean v2, v2, p1

    if-nez v2, :cond_0

    .line 570
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 571
    .local v0, "aa":Landroid/view/animation/AlphaAnimation;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 572
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 576
    .end local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    :goto_0
    return-object v1

    .line 574
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    goto :goto_0
.end method
