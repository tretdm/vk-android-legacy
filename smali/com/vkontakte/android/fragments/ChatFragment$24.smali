.class Lcom/vkontakte/android/fragments/ChatFragment$24;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Lcom/vkontakte/android/data/Messages$GetMessagesCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/ChatFragment;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/ChatFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ChatFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatFragment$24;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    .line 1088
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/ChatFragment$24;)Lcom/vkontakte/android/fragments/ChatFragment;
    .locals 1

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$24;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    return-object v0
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 4
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$24;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$0(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1147
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$24;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1148
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$24;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$17(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/ChatFragment$24$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/vkontakte/android/fragments/ChatFragment$24$2;-><init>(Lcom/vkontakte/android/fragments/ChatFragment$24;ILjava/lang/String;)V

    .line 1155
    const-wide/16 v2, 0x12c

    .line 1148
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1168
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$24;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/ChatFragment;->access$51(Lcom/vkontakte/android/fragments/ChatFragment;Z)V

    .line 1169
    return-void

    .line 1158
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$24;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1159
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$24;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/ChatFragment$24$3;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/ChatFragment$24$3;-><init>(Lcom/vkontakte/android/fragments/ChatFragment$24;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onMessagesLoaded(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1092
    .local p1, "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$24;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1142
    :goto_0
    return-void

    .line 1093
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$24;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/ChatFragment$24$1;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/fragments/ChatFragment$24$1;-><init>(Lcom/vkontakte/android/fragments/ChatFragment$24;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
