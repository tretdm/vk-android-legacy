.class Lcom/vkontakte/android/fragments/PostViewFragment$33;
.super Ljava/lang/Object;
.source "PostViewFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PostViewFragment;->highlightComment(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

.field private final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PostViewFragment;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$33;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    iput p2, p0, Lcom/vkontakte/android/fragments/PostViewFragment$33;->val$pos:I

    .line 1507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1510
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PostViewFragment$33;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$9(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/RefreshableListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1511
    iget v3, p0, Lcom/vkontakte/android/fragments/PostViewFragment$33;->val$pos:I

    iget-object v4, p0, Lcom/vkontakte/android/fragments/PostViewFragment$33;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$9(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkontakte/android/ui/RefreshableListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int v0, v3, v4

    .line 1512
    .local v0, "childPos":I
    if-ltz v0, :cond_0

    iget-object v3, p0, Lcom/vkontakte/android/fragments/PostViewFragment$33;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$9(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildCount()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 1522
    :cond_0
    :goto_0
    return v7

    .line 1513
    :cond_1
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PostViewFragment$33;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$9(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1514
    .local v1, "item":Landroid/view/View;
    new-instance v2, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const v6, 0x218fa9c7

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v5, v3, v4

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const v5, 0x8fa9c7

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v4, v3, v7

    invoke-direct {v2, v3}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 1515
    .local v2, "td":Landroid/graphics/drawable/TransitionDrawable;
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1516
    invoke-virtual {v2, v7}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 1517
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PostViewFragment$33;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$9(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v3

    new-instance v4, Lcom/vkontakte/android/fragments/PostViewFragment$33$1;

    invoke-direct {v4, p0, v2}, Lcom/vkontakte/android/fragments/PostViewFragment$33$1;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment$33;Landroid/graphics/drawable/TransitionDrawable;)V

    .line 1521
    const-wide/16 v5, 0x7d0

    .line 1517
    invoke-virtual {v3, v4, v5, v6}, Lcom/vkontakte/android/ui/RefreshableListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
