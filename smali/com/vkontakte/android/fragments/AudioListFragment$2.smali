.class Lcom/vkontakte/android/fragments/AudioListFragment$2;
.super Ljava/lang/Object;
.source "AudioListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/AudioListFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/AudioListFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/AudioListFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/AudioListFragment$2;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 11
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v9, p0, Lcom/vkontakte/android/fragments/AudioListFragment$2;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v9}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$1(Lcom/vkontakte/android/fragments/AudioListFragment;)Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;

    move-result-object v9

    invoke-virtual {v9, p3}, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;->resolveIndex(I)[I

    move-result-object v5

    .line 196
    .local v5, "p":[I
    const/4 v9, 0x0

    aget v8, v5, v9

    .line 197
    .local v8, "section":I
    const/4 v9, 0x1

    aget v6, v5, v9

    .line 198
    .local v6, "position":I
    const/4 v2, 0x0

    .line 199
    .local v2, "file":Lcom/vkontakte/android/AudioFile;
    iget-object v9, p0, Lcom/vkontakte/android/fragments/AudioListFragment$2;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v9}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$11(Lcom/vkontakte/android/fragments/AudioListFragment;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 200
    iget-object v9, p0, Lcom/vkontakte/android/fragments/AudioListFragment$2;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v9}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$10(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "file":Lcom/vkontakte/android/AudioFile;
    check-cast v2, Lcom/vkontakte/android/AudioFile;

    .line 205
    .restart local v2    # "file":Lcom/vkontakte/android/AudioFile;
    :cond_0
    :goto_0
    iget-object v9, p0, Lcom/vkontakte/android/fragments/AudioListFragment$2;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v9}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$15(Lcom/vkontakte/android/fragments/AudioListFragment;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 206
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 207
    .local v7, "result":Landroid/content/Intent;
    const-string v9, "audio"

    invoke-virtual {v7, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 208
    iget-object v9, p0, Lcom/vkontakte/android/fragments/AudioListFragment$2;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-virtual {v9}, Lcom/vkontakte/android/fragments/AudioListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    const/4 v10, -0x1

    invoke-virtual {v9, v10, v7}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 209
    iget-object v9, p0, Lcom/vkontakte/android/fragments/AudioListFragment$2;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-virtual {v9}, Lcom/vkontakte/android/fragments/AudioListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 236
    .end local v7    # "result":Landroid/content/Intent;
    :goto_1
    return-void

    .line 202
    :cond_1
    if-nez v8, :cond_2

    iget-object v9, p0, Lcom/vkontakte/android/fragments/AudioListFragment$2;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v9}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$12(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "file":Lcom/vkontakte/android/AudioFile;
    check-cast v2, Lcom/vkontakte/android/AudioFile;

    .line 203
    .restart local v2    # "file":Lcom/vkontakte/android/AudioFile;
    :cond_2
    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    iget-object v9, p0, Lcom/vkontakte/android/fragments/AudioListFragment$2;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v9}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$13(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "file":Lcom/vkontakte/android/AudioFile;
    check-cast v2, Lcom/vkontakte/android/AudioFile;

    .restart local v2    # "file":Lcom/vkontakte/android/AudioFile;
    goto :goto_0

    .line 212
    :cond_3
    sget-object v9, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v9, :cond_4

    .line 213
    sget-object v9, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v9}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v1

    .line 214
    .local v1, "cur":Lcom/vkontakte/android/AudioFile;
    invoke-virtual {v2, v1}, Lcom/vkontakte/android/AudioFile;->equals(Lcom/vkontakte/android/AudioFile;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 215
    new-instance v3, Landroid/content/Intent;

    iget-object v9, p0, Lcom/vkontakte/android/fragments/AudioListFragment$2;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-virtual {v9}, Lcom/vkontakte/android/fragments/AudioListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    const-class v10, Lcom/vkontakte/android/AudioPlayerService;

    invoke-direct {v3, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 216
    .local v3, "intent":Landroid/content/Intent;
    const-string v9, "action"

    const/4 v10, 0x3

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 217
    iget-object v9, p0, Lcom/vkontakte/android/fragments/AudioListFragment$2;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-virtual {v9}, Lcom/vkontakte/android/fragments/AudioListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/support/v4/app/FragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    .line 222
    .end local v1    # "cur":Lcom/vkontakte/android/AudioFile;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_4
    new-instance v3, Landroid/content/Intent;

    iget-object v9, p0, Lcom/vkontakte/android/fragments/AudioListFragment$2;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-virtual {v9}, Lcom/vkontakte/android/fragments/AudioListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    const-class v10, Lcom/vkontakte/android/AudioPlayerService;

    invoke-direct {v3, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 223
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v9, "action"

    const/4 v10, 0x2

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 224
    iget-object v9, p0, Lcom/vkontakte/android/fragments/AudioListFragment$2;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v9}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$11(Lcom/vkontakte/android/fragments/AudioListFragment;)Z

    move-result v9

    if-eqz v9, :cond_6

    if-nez v8, :cond_5

    iget-object v9, p0, Lcom/vkontakte/android/fragments/AudioListFragment$2;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v9}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$12(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v4

    .line 226
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/AudioFile;>;"
    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/16 v10, 0x1f4

    if-le v9, v10, :cond_7

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v0, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/AudioFile;>;"
    sput-object v4, Lcom/vkontakte/android/AudioPlayerService;->listToPlay:Ljava/util/ArrayList;

    .line 232
    :goto_3
    const-string v9, "list_al"

    invoke-virtual {v3, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 233
    const-string v9, "position"

    invoke-virtual {v3, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 234
    const-string v10, "referer"

    if-nez v8, :cond_9

    iget-object v9, p0, Lcom/vkontakte/android/fragments/AudioListFragment$2;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v9}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$7(Lcom/vkontakte/android/fragments/AudioListFragment;)I

    move-result v9

    if-ltz v9, :cond_8

    const-string v9, "audios_user"

    :goto_4
    invoke-virtual {v3, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    iget-object v9, p0, Lcom/vkontakte/android/fragments/AudioListFragment$2;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-virtual {v9}, Lcom/vkontakte/android/fragments/AudioListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/support/v4/app/FragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_1

    .line 224
    .end local v0    # "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/AudioFile;>;"
    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/AudioFile;>;"
    :cond_5
    iget-object v9, p0, Lcom/vkontakte/android/fragments/AudioListFragment$2;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v9}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$13(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_2

    :cond_6
    iget-object v9, p0, Lcom/vkontakte/android/fragments/AudioListFragment$2;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v9}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$10(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_2

    .line 230
    .restart local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/AudioFile;>;"
    :cond_7
    move-object v0, v4

    .restart local v0    # "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/AudioFile;>;"
    goto :goto_3

    .line 234
    :cond_8
    const-string v9, "audios_group"

    goto :goto_4

    :cond_9
    const-string v9, "search"

    goto :goto_4
.end method
