.class Lcom/vkontakte/android/FriendListView$10;
.super Ljava/lang/Object;
.source "FriendListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/FriendListView;->onScrolled(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/FriendListView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/FriendListView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/FriendListView$10;->this$0:Lcom/vkontakte/android/FriendListView;

    .line 745
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 746
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 747
    .local v0, "aa":Landroid/view/animation/AlphaAnimation;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 748
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 749
    iget-object v1, p0, Lcom/vkontakte/android/FriendListView$10;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v1}, Lcom/vkontakte/android/FriendListView;->access$19(Lcom/vkontakte/android/FriendListView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 750
    iget-object v1, p0, Lcom/vkontakte/android/FriendListView$10;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v1}, Lcom/vkontakte/android/FriendListView;->access$19(Lcom/vkontakte/android/FriendListView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 751
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/FriendListView$10;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v1}, Lcom/vkontakte/android/FriendListView;->access$34(Lcom/vkontakte/android/FriendListView;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 752
    iget-object v1, p0, Lcom/vkontakte/android/FriendListView$10;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v1}, Lcom/vkontakte/android/FriendListView;->access$34(Lcom/vkontakte/android/FriendListView;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 753
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/FriendListView$10;->this$0:Lcom/vkontakte/android/FriendListView;

    invoke-static {v1}, Lcom/vkontakte/android/FriendListView;->access$19(Lcom/vkontakte/android/FriendListView;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 754
    return-void
.end method
