.class Lcom/vkontakte/android/fragments/ChatFragment$19$2;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/ChatFragment$19;->onUsersLoaded(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/ChatFragment$19;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$users:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ChatFragment$19;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1176
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatFragment$19$2;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$19;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/ChatFragment$19$2;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/vkontakte/android/fragments/ChatFragment$19$2;->val$users:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1178
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment$19$2;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$19;

    iget-object v3, v3, Lcom/vkontakte/android/fragments/ChatFragment$19;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1197
    :cond_0
    :goto_0
    return-void

    .line 1179
    :cond_1
    const/4 v2, 0x0

    .line 1180
    .local v2, "needRebuild":Z
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment$19$2;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$19;

    iget-object v3, v3, Lcom/vkontakte/android/fragments/ChatFragment$19;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$000(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/Message;

    .line 1181
    .local v1, "msg":Lcom/vkontakte/android/Message;
    iget-boolean v3, v1, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    if-eqz v3, :cond_2

    .line 1182
    const/4 v2, 0x1

    .line 1186
    .end local v1    # "msg":Lcom/vkontakte/android/Message;
    :cond_3
    if-eqz v2, :cond_6

    .line 1187
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment$19$2;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$19;

    iget-object v3, v3, Lcom/vkontakte/android/fragments/ChatFragment$19;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$2400(Lcom/vkontakte/android/fragments/ChatFragment;)V

    .line 1188
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment$19$2;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$19;

    iget-object v3, v3, Lcom/vkontakte/android/fragments/ChatFragment$19;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$300(Lcom/vkontakte/android/fragments/ChatFragment;)V

    .line 1192
    :goto_1
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment$19$2;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$19;

    iget-object v3, v3, Lcom/vkontakte/android/fragments/ChatFragment$19;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "from_search"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1193
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment$19$2;->val$title:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment$19$2;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$19;

    iget-object v3, v3, Lcom/vkontakte/android/fragments/ChatFragment$19;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$19$2;->val$title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1194
    :cond_4
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment$19$2;->val$users:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 1195
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment$19$2;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$19;

    iget-object v3, v3, Lcom/vkontakte/android/fragments/ChatFragment$19;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const v4, 0x7f070005

    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$19$2;->val$users:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-object v6, p0, Lcom/vkontakte/android/fragments/ChatFragment$19$2;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$19;

    iget-object v6, v6, Lcom/vkontakte/android/fragments/ChatFragment$19;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {v6}, Lcom/vkontakte/android/fragments/ChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1196
    :cond_5
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment$19$2;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$19;

    iget-object v3, v3, Lcom/vkontakte/android/fragments/ChatFragment$19;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1600(Lcom/vkontakte/android/fragments/ChatFragment;)V

    goto/16 :goto_0

    .line 1190
    :cond_6
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment$19$2;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$19;

    iget-object v3, v3, Lcom/vkontakte/android/fragments/ChatFragment$19;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5700(Lcom/vkontakte/android/fragments/ChatFragment;)V

    goto :goto_1
.end method
