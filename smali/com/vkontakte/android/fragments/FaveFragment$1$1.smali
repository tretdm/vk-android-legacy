.class Lcom/vkontakte/android/fragments/FaveFragment$1$1;
.super Ljava/lang/Object;
.source "FaveFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/FaveFragment$1;->onPageSelected(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/FaveFragment$1;

.field final synthetic val$page:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/FaveFragment$1;I)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FaveFragment$1$1;->this$1:Lcom/vkontakte/android/fragments/FaveFragment$1;

    iput p2, p0, Lcom/vkontakte/android/fragments/FaveFragment$1$1;->val$page:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 97
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment$1$1;->this$1:Lcom/vkontakte/android/fragments/FaveFragment$1;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/FaveFragment$1;->this$0:Lcom/vkontakte/android/fragments/FaveFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/FaveFragment;->access$002(Lcom/vkontakte/android/fragments/FaveFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 98
    iget v0, p0, Lcom/vkontakte/android/fragments/FaveFragment$1$1;->val$page:I

    packed-switch v0, :pswitch_data_0

    .line 127
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 100
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment$1$1;->this$1:Lcom/vkontakte/android/fragments/FaveFragment$1;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/FaveFragment$1;->this$0:Lcom/vkontakte/android/fragments/FaveFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FaveFragment;->access$200(Lcom/vkontakte/android/fragments/FaveFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment$1$1;->this$1:Lcom/vkontakte/android/fragments/FaveFragment$1;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/FaveFragment$1;->this$0:Lcom/vkontakte/android/fragments/FaveFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FaveFragment;->access$300(Lcom/vkontakte/android/fragments/FaveFragment;)Lcom/vkontakte/android/fragments/FaveVideoListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/FaveVideoListFragment;->loadData()V

    .line 102
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment$1$1;->this$1:Lcom/vkontakte/android/fragments/FaveFragment$1;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/FaveFragment$1;->this$0:Lcom/vkontakte/android/fragments/FaveFragment;

    invoke-static {v0, v2}, Lcom/vkontakte/android/fragments/FaveFragment;->access$202(Lcom/vkontakte/android/fragments/FaveFragment;Z)Z

    goto :goto_0

    .line 109
    :pswitch_2
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment$1$1;->this$1:Lcom/vkontakte/android/fragments/FaveFragment$1;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/FaveFragment$1;->this$0:Lcom/vkontakte/android/fragments/FaveFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FaveFragment;->access$400(Lcom/vkontakte/android/fragments/FaveFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment$1$1;->this$1:Lcom/vkontakte/android/fragments/FaveFragment$1;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/FaveFragment$1;->this$0:Lcom/vkontakte/android/fragments/FaveFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FaveFragment;->access$500(Lcom/vkontakte/android/fragments/FaveFragment;)Lcom/vkontakte/android/fragments/userlist/FaveUserListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/userlist/FaveUserListFragment;->loadData()V

    .line 111
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment$1$1;->this$1:Lcom/vkontakte/android/fragments/FaveFragment$1;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/FaveFragment$1;->this$0:Lcom/vkontakte/android/fragments/FaveFragment;

    invoke-static {v0, v2}, Lcom/vkontakte/android/fragments/FaveFragment;->access$402(Lcom/vkontakte/android/fragments/FaveFragment;Z)Z

    goto :goto_0

    .line 115
    :pswitch_3
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment$1$1;->this$1:Lcom/vkontakte/android/fragments/FaveFragment$1;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/FaveFragment$1;->this$0:Lcom/vkontakte/android/fragments/FaveFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FaveFragment;->access$600(Lcom/vkontakte/android/fragments/FaveFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment$1$1;->this$1:Lcom/vkontakte/android/fragments/FaveFragment$1;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/FaveFragment$1;->this$0:Lcom/vkontakte/android/fragments/FaveFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FaveFragment;->access$700(Lcom/vkontakte/android/fragments/FaveFragment;)Lcom/vkontakte/android/fragments/FavePostListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/FavePostListFragment;->loadData()V

    .line 117
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment$1$1;->this$1:Lcom/vkontakte/android/fragments/FaveFragment$1;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/FaveFragment$1;->this$0:Lcom/vkontakte/android/fragments/FaveFragment;

    invoke-static {v0, v2}, Lcom/vkontakte/android/fragments/FaveFragment;->access$602(Lcom/vkontakte/android/fragments/FaveFragment;Z)Z

    goto :goto_0

    .line 121
    :pswitch_4
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment$1$1;->this$1:Lcom/vkontakte/android/fragments/FaveFragment$1;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/FaveFragment$1;->this$0:Lcom/vkontakte/android/fragments/FaveFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FaveFragment;->access$800(Lcom/vkontakte/android/fragments/FaveFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment$1$1;->this$1:Lcom/vkontakte/android/fragments/FaveFragment$1;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/FaveFragment$1;->this$0:Lcom/vkontakte/android/fragments/FaveFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FaveFragment;->access$900(Lcom/vkontakte/android/fragments/FaveFragment;)Lcom/vkontakte/android/fragments/userlist/FaveLinkListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/userlist/FaveLinkListFragment;->loadData()V

    .line 123
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment$1$1;->this$1:Lcom/vkontakte/android/fragments/FaveFragment$1;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/FaveFragment$1;->this$0:Lcom/vkontakte/android/fragments/FaveFragment;

    invoke-static {v0, v2}, Lcom/vkontakte/android/fragments/FaveFragment;->access$802(Lcom/vkontakte/android/fragments/FaveFragment;Z)Z

    goto :goto_0

    .line 98
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
