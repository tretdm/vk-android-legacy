.class Lcom/vkontakte/android/fragments/LikesListFragment$1;
.super Ljava/lang/Object;
.source "LikesListFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/LikesListFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/LikesListFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/LikesListFragment;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/vkontakte/android/fragments/LikesListFragment$1;->this$0:Lcom/vkontakte/android/fragments/LikesListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 84
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 78
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .param p1, "pos"    # I

    .prologue
    const/4 v1, 0x1

    .line 64
    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/LikesListFragment$1;->this$0:Lcom/vkontakte/android/fragments/LikesListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/LikesListFragment;->access$000(Lcom/vkontakte/android/fragments/LikesListFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/vkontakte/android/fragments/LikesListFragment$1;->this$0:Lcom/vkontakte/android/fragments/LikesListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/LikesListFragment;->access$100(Lcom/vkontakte/android/fragments/LikesListFragment;)Lcom/vkontakte/android/fragments/userlist/LikesUserListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/userlist/LikesUserListFragment;->loadData()V

    .line 66
    iget-object v0, p0, Lcom/vkontakte/android/fragments/LikesListFragment$1;->this$0:Lcom/vkontakte/android/fragments/LikesListFragment;

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/LikesListFragment;->access$002(Lcom/vkontakte/android/fragments/LikesListFragment;Z)Z

    .line 68
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/fragments/LikesListFragment$1;->this$0:Lcom/vkontakte/android/fragments/LikesListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/LikesListFragment;->access$200(Lcom/vkontakte/android/fragments/LikesListFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/vkontakte/android/fragments/LikesListFragment$1;->this$0:Lcom/vkontakte/android/fragments/LikesListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/LikesListFragment;->access$300(Lcom/vkontakte/android/fragments/LikesListFragment;)Lcom/vkontakte/android/fragments/userlist/LikesUserListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/userlist/LikesUserListFragment;->loadData()V

    .line 70
    iget-object v0, p0, Lcom/vkontakte/android/fragments/LikesListFragment$1;->this$0:Lcom/vkontakte/android/fragments/LikesListFragment;

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/LikesListFragment;->access$202(Lcom/vkontakte/android/fragments/LikesListFragment;Z)Z

    .line 72
    :cond_1
    return-void
.end method
