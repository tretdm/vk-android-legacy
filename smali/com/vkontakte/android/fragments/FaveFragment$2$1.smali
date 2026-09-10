.class Lcom/vkontakte/android/fragments/FaveFragment$2$1;
.super Ljava/lang/Object;
.source "FaveFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/FaveFragment$2;->onPageSelected(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/FaveFragment$2;

.field private final synthetic val$page:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/FaveFragment$2;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FaveFragment$2$1;->this$1:Lcom/vkontakte/android/fragments/FaveFragment$2;

    iput p2, p0, Lcom/vkontakte/android/fragments/FaveFragment$2$1;->val$page:I

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 112
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment$2$1;->this$1:Lcom/vkontakte/android/fragments/FaveFragment$2;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FaveFragment$2;->access$0(Lcom/vkontakte/android/fragments/FaveFragment$2;)Lcom/vkontakte/android/fragments/FaveFragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/FaveFragment;->access$7(Lcom/vkontakte/android/fragments/FaveFragment;Ljava/lang/Runnable;)V

    .line 113
    iget v0, p0, Lcom/vkontakte/android/fragments/FaveFragment$2$1;->val$page:I

    packed-switch v0, :pswitch_data_0

    .line 138
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 115
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment$2$1;->this$1:Lcom/vkontakte/android/fragments/FaveFragment$2;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FaveFragment$2;->access$0(Lcom/vkontakte/android/fragments/FaveFragment$2;)Lcom/vkontakte/android/fragments/FaveFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FaveFragment;->access$4(Lcom/vkontakte/android/fragments/FaveFragment;)Lcom/vkontakte/android/VideoListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/VideoListView;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment$2$1;->this$1:Lcom/vkontakte/android/fragments/FaveFragment$2;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FaveFragment$2;->access$0(Lcom/vkontakte/android/fragments/FaveFragment$2;)Lcom/vkontakte/android/fragments/FaveFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FaveFragment;->access$4(Lcom/vkontakte/android/fragments/FaveFragment;)Lcom/vkontakte/android/VideoListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/VideoListView;->loadData()V

    goto :goto_0

    .line 122
    :pswitch_2
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment$2$1;->this$1:Lcom/vkontakte/android/fragments/FaveFragment$2;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FaveFragment$2;->access$0(Lcom/vkontakte/android/fragments/FaveFragment$2;)Lcom/vkontakte/android/fragments/FaveFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FaveFragment;->access$8(Lcom/vkontakte/android/fragments/FaveFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment$2$1;->this$1:Lcom/vkontakte/android/fragments/FaveFragment$2;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FaveFragment$2;->access$0(Lcom/vkontakte/android/fragments/FaveFragment$2;)Lcom/vkontakte/android/fragments/FaveFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FaveFragment;->access$0(Lcom/vkontakte/android/fragments/FaveFragment;)Lcom/vkontakte/android/UserListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/UserListView;->loadData()V

    .line 124
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment$2$1;->this$1:Lcom/vkontakte/android/fragments/FaveFragment$2;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FaveFragment$2;->access$0(Lcom/vkontakte/android/fragments/FaveFragment$2;)Lcom/vkontakte/android/fragments/FaveFragment;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/vkontakte/android/fragments/FaveFragment;->access$9(Lcom/vkontakte/android/fragments/FaveFragment;Z)V

    goto :goto_0

    .line 128
    :pswitch_3
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment$2$1;->this$1:Lcom/vkontakte/android/fragments/FaveFragment$2;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FaveFragment$2;->access$0(Lcom/vkontakte/android/fragments/FaveFragment$2;)Lcom/vkontakte/android/fragments/FaveFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FaveFragment;->access$10(Lcom/vkontakte/android/fragments/FaveFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment$2$1;->this$1:Lcom/vkontakte/android/fragments/FaveFragment$2;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FaveFragment$2;->access$0(Lcom/vkontakte/android/fragments/FaveFragment$2;)Lcom/vkontakte/android/fragments/FaveFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FaveFragment;->access$1(Lcom/vkontakte/android/fragments/FaveFragment;)Lcom/vkontakte/android/NewsView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/NewsView;->loadData(Z)V

    .line 130
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment$2$1;->this$1:Lcom/vkontakte/android/fragments/FaveFragment$2;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FaveFragment$2;->access$0(Lcom/vkontakte/android/fragments/FaveFragment$2;)Lcom/vkontakte/android/fragments/FaveFragment;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/vkontakte/android/fragments/FaveFragment;->access$11(Lcom/vkontakte/android/fragments/FaveFragment;Z)V

    goto :goto_0

    .line 134
    :pswitch_4
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment$2$1;->this$1:Lcom/vkontakte/android/fragments/FaveFragment$2;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FaveFragment$2;->access$0(Lcom/vkontakte/android/fragments/FaveFragment$2;)Lcom/vkontakte/android/fragments/FaveFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FaveFragment;->access$2(Lcom/vkontakte/android/fragments/FaveFragment;)Lcom/vkontakte/android/UserListView;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/UserListView;->list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/FaveFragment$2$1;->this$1:Lcom/vkontakte/android/fragments/FaveFragment$2;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FaveFragment$2;->access$0(Lcom/vkontakte/android/fragments/FaveFragment$2;)Lcom/vkontakte/android/fragments/FaveFragment;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FaveFragment;->access$2(Lcom/vkontakte/android/fragments/FaveFragment;)Lcom/vkontakte/android/UserListView;

    move-result-object v1

    iget-object v1, v1, Lcom/vkontakte/android/UserListView;->list:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/FaveFragment$2$1;->this$1:Lcom/vkontakte/android/fragments/FaveFragment$2;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/FaveFragment$2;->access$0(Lcom/vkontakte/android/fragments/FaveFragment$2;)Lcom/vkontakte/android/fragments/FaveFragment;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/fragments/FaveFragment;->access$2(Lcom/vkontakte/android/fragments/FaveFragment;)Lcom/vkontakte/android/UserListView;

    move-result-object v2

    iget-object v2, v2, Lcom/vkontakte/android/UserListView;->list:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v2

    add-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 135
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment$2$1;->this$1:Lcom/vkontakte/android/fragments/FaveFragment$2;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FaveFragment$2;->access$0(Lcom/vkontakte/android/fragments/FaveFragment$2;)Lcom/vkontakte/android/fragments/FaveFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FaveFragment;->access$2(Lcom/vkontakte/android/fragments/FaveFragment;)Lcom/vkontakte/android/UserListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/UserListView;->loadData()V

    goto/16 :goto_0

    .line 113
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
