.class Lcom/vkontakte/android/fragments/ChatFragment$16$1;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/ChatFragment$16;->onUsersLoaded(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/ChatFragment$16;

.field private final synthetic val$title:Ljava/lang/String;

.field private final synthetic val$users:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ChatFragment$16;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatFragment$16$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$16;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/ChatFragment$16$1;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/vkontakte/android/fragments/ChatFragment$16$1;->val$users:Ljava/util/ArrayList;

    .line 877
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 879
    const/4 v1, 0x0

    .line 880
    .local v1, "needRebuild":Z
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment$16$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$16;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatFragment$16;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$16;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatFragment;->access$0(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 886
    :goto_0
    if-eqz v1, :cond_2

    .line 887
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment$16$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$16;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatFragment$16;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$16;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatFragment;->access$45(Lcom/vkontakte/android/fragments/ChatFragment;)V

    .line 888
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment$16$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$16;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatFragment$16;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$16;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatFragment;->access$3(Lcom/vkontakte/android/fragments/ChatFragment;)V

    .line 892
    :goto_1
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment$16$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$16;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatFragment$16;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$16;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "from_search"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 896
    :goto_2
    return-void

    .line 880
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Message;

    .line 881
    .local v0, "msg":Lcom/vkontakte/android/Message;
    iget-boolean v3, v0, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    if-eqz v3, :cond_0

    .line 882
    const/4 v1, 0x1

    .line 883
    goto :goto_0

    .line 890
    .end local v0    # "msg":Lcom/vkontakte/android/Message;
    :cond_2
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment$16$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$16;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatFragment$16;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$16;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatFragment;->access$46(Lcom/vkontakte/android/fragments/ChatFragment;)V

    goto :goto_1

    .line 893
    :cond_3
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment$16$1;->val$title:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment$16$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$16;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatFragment$16;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$16;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment$16$1;->val$title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 894
    :cond_4
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment$16$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$16;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatFragment$16;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$16;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/ChatFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v2

    const v3, 0x7f0d0052

    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$16$1;->val$users:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$16$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$16;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/ChatFragment$16;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$16;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vkontakte/android/fragments/ChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 895
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment$16$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$16;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatFragment$16;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$16;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatFragment;->access$13(Lcom/vkontakte/android/fragments/ChatFragment;)V

    goto :goto_2
.end method
