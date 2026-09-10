.class Lcom/vkontakte/android/fragments/FeedbackFragment$1;
.super Ljava/lang/Object;
.source "FeedbackFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/FeedbackFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/FeedbackFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/FeedbackFragment;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FeedbackFragment$1;->this$0:Lcom/vkontakte/android/fragments/FeedbackFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "page"    # I

    .prologue
    .line 119
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 111
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .param p1, "page"    # I

    .prologue
    const/4 v0, 0x1

    .line 99
    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/FeedbackFragment$1;->this$0:Lcom/vkontakte/android/fragments/FeedbackFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FeedbackFragment;->access$000(Lcom/vkontakte/android/fragments/FeedbackFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FeedbackFragment$1;->this$0:Lcom/vkontakte/android/fragments/FeedbackFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FeedbackFragment;->access$100(Lcom/vkontakte/android/fragments/FeedbackFragment;)Lcom/vkontakte/android/fragments/CommentsPostListFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/CommentsPostListFragment;->loadData()V

    .line 101
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FeedbackFragment$1;->this$0:Lcom/vkontakte/android/fragments/FeedbackFragment;

    invoke-static {v1, v0}, Lcom/vkontakte/android/fragments/FeedbackFragment;->access$002(Lcom/vkontakte/android/fragments/FeedbackFragment;Z)Z

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FeedbackFragment$1;->this$0:Lcom/vkontakte/android/fragments/FeedbackFragment;

    if-nez p1, :cond_1

    :goto_0
    invoke-static {v1, v0}, Lcom/vkontakte/android/fragments/FeedbackFragment;->access$202(Lcom/vkontakte/android/fragments/FeedbackFragment;Z)Z

    .line 104
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FeedbackFragment$1;->this$0:Lcom/vkontakte/android/fragments/FeedbackFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/FeedbackFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 105
    return-void

    .line 103
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
