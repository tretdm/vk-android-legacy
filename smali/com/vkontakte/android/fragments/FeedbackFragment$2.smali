.class Lcom/vkontakte/android/fragments/FeedbackFragment$2;
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
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FeedbackFragment$2;->this$0:Lcom/vkontakte/android/fragments/FeedbackFragment;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "page"    # I

    .prologue
    .line 113
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 105
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .param p1, "page"    # I

    .prologue
    const/4 v0, 0x1

    .line 93
    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/FeedbackFragment$2;->this$0:Lcom/vkontakte/android/fragments/FeedbackFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FeedbackFragment;->access$2(Lcom/vkontakte/android/fragments/FeedbackFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FeedbackFragment$2;->this$0:Lcom/vkontakte/android/fragments/FeedbackFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FeedbackFragment;->access$1(Lcom/vkontakte/android/fragments/FeedbackFragment;)Lcom/vkontakte/android/NewsView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/NewsView;->loadData(Z)V

    .line 95
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FeedbackFragment$2;->this$0:Lcom/vkontakte/android/fragments/FeedbackFragment;

    invoke-static {v1, v0}, Lcom/vkontakte/android/fragments/FeedbackFragment;->access$3(Lcom/vkontakte/android/fragments/FeedbackFragment;Z)V

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FeedbackFragment$2;->this$0:Lcom/vkontakte/android/fragments/FeedbackFragment;

    if-nez p1, :cond_1

    :goto_0
    invoke-static {v1, v0}, Lcom/vkontakte/android/fragments/FeedbackFragment;->access$4(Lcom/vkontakte/android/fragments/FeedbackFragment;Z)V

    .line 98
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FeedbackFragment$2;->this$0:Lcom/vkontakte/android/fragments/FeedbackFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/FeedbackFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->invalidateOptionsMenu()V

    .line 99
    return-void

    .line 97
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
