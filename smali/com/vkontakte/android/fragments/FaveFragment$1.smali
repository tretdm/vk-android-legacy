.class Lcom/vkontakte/android/fragments/FaveFragment$1;
.super Ljava/lang/Object;
.source "FaveFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/FaveFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/FaveFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/FaveFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FaveFragment$1;->this$0:Lcom/vkontakte/android/fragments/FaveFragment;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 106
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 100
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "page"    # I

    .prologue
    const/4 v1, 0x1

    .line 68
    packed-switch p1, :pswitch_data_0

    .line 93
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment$1;->this$0:Lcom/vkontakte/android/fragments/FaveFragment;

    invoke-static {v0, p1}, Lcom/vkontakte/android/fragments/FaveFragment;->access$9(Lcom/vkontakte/android/fragments/FaveFragment;I)V

    .line 94
    return-void

    .line 70
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment$1;->this$0:Lcom/vkontakte/android/fragments/FaveFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FaveFragment;->access$4(Lcom/vkontakte/android/fragments/FaveFragment;)Lcom/vkontakte/android/VideoListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/VideoListView;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment$1;->this$0:Lcom/vkontakte/android/fragments/FaveFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FaveFragment;->access$4(Lcom/vkontakte/android/fragments/FaveFragment;)Lcom/vkontakte/android/VideoListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/VideoListView;->loadData()V

    goto :goto_0

    .line 77
    :pswitch_2
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment$1;->this$0:Lcom/vkontakte/android/fragments/FaveFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FaveFragment;->access$5(Lcom/vkontakte/android/fragments/FaveFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment$1;->this$0:Lcom/vkontakte/android/fragments/FaveFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FaveFragment;->access$0(Lcom/vkontakte/android/fragments/FaveFragment;)Lcom/vkontakte/android/UserListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/UserListView;->loadData()V

    .line 79
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment$1;->this$0:Lcom/vkontakte/android/fragments/FaveFragment;

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/FaveFragment;->access$6(Lcom/vkontakte/android/fragments/FaveFragment;Z)V

    goto :goto_0

    .line 83
    :pswitch_3
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment$1;->this$0:Lcom/vkontakte/android/fragments/FaveFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FaveFragment;->access$7(Lcom/vkontakte/android/fragments/FaveFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment$1;->this$0:Lcom/vkontakte/android/fragments/FaveFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FaveFragment;->access$1(Lcom/vkontakte/android/fragments/FaveFragment;)Lcom/vkontakte/android/NewsView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewsView;->loadData(Z)V

    .line 85
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment$1;->this$0:Lcom/vkontakte/android/fragments/FaveFragment;

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/FaveFragment;->access$8(Lcom/vkontakte/android/fragments/FaveFragment;Z)V

    goto :goto_0

    .line 89
    :pswitch_4
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment$1;->this$0:Lcom/vkontakte/android/fragments/FaveFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FaveFragment;->access$2(Lcom/vkontakte/android/fragments/FaveFragment;)Lcom/vkontakte/android/UserListView;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/UserListView;->list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/FaveFragment$1;->this$0:Lcom/vkontakte/android/fragments/FaveFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FaveFragment;->access$2(Lcom/vkontakte/android/fragments/FaveFragment;)Lcom/vkontakte/android/UserListView;

    move-result-object v1

    iget-object v1, v1, Lcom/vkontakte/android/UserListView;->list:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/FaveFragment$1;->this$0:Lcom/vkontakte/android/fragments/FaveFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/FaveFragment;->access$2(Lcom/vkontakte/android/fragments/FaveFragment;)Lcom/vkontakte/android/UserListView;

    move-result-object v2

    iget-object v2, v2, Lcom/vkontakte/android/UserListView;->list:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v2

    add-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment$1;->this$0:Lcom/vkontakte/android/fragments/FaveFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FaveFragment;->access$2(Lcom/vkontakte/android/fragments/FaveFragment;)Lcom/vkontakte/android/UserListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/UserListView;->loadData()V

    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
