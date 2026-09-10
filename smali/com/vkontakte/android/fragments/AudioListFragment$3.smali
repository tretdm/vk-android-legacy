.class Lcom/vkontakte/android/fragments/AudioListFragment$3;
.super Ljava/lang/Object;
.source "AudioListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


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
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/AudioListFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/AudioListFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/AudioListFragment$3;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 9
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 242
    iget-object v7, p0, Lcom/vkontakte/android/fragments/AudioListFragment$3;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$1(Lcom/vkontakte/android/fragments/AudioListFragment;)Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;

    move-result-object v7

    invoke-virtual {v7, p3}, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;->resolveIndex(I)[I

    move-result-object v1

    .line 243
    .local v1, "p":[I
    aget v4, v1, v5

    .line 244
    .local v4, "section":I
    aget v2, v1, v6

    .line 245
    .local v2, "position":I
    const/4 v0, 0x0

    .line 246
    .local v0, "file":Lcom/vkontakte/android/AudioFile;
    iget-object v7, p0, Lcom/vkontakte/android/fragments/AudioListFragment$3;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$11(Lcom/vkontakte/android/fragments/AudioListFragment;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 247
    iget-object v7, p0, Lcom/vkontakte/android/fragments/AudioListFragment$3;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$10(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "file":Lcom/vkontakte/android/AudioFile;
    check-cast v0, Lcom/vkontakte/android/AudioFile;

    .line 252
    .restart local v0    # "file":Lcom/vkontakte/android/AudioFile;
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/vkontakte/android/fragments/AudioListFragment$3;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$15(Lcom/vkontakte/android/fragments/AudioListFragment;)Z

    move-result v7

    if-nez v7, :cond_1

    sget-object v7, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-nez v7, :cond_4

    .line 257
    :cond_1
    :goto_1
    return v5

    .line 249
    :cond_2
    if-nez v4, :cond_3

    iget-object v7, p0, Lcom/vkontakte/android/fragments/AudioListFragment$3;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$12(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "file":Lcom/vkontakte/android/AudioFile;
    check-cast v0, Lcom/vkontakte/android/AudioFile;

    .line 250
    .restart local v0    # "file":Lcom/vkontakte/android/AudioFile;
    :cond_3
    if-ne v4, v6, :cond_0

    iget-object v7, p0, Lcom/vkontakte/android/fragments/AudioListFragment$3;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$13(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "file":Lcom/vkontakte/android/AudioFile;
    check-cast v0, Lcom/vkontakte/android/AudioFile;

    .restart local v0    # "file":Lcom/vkontakte/android/AudioFile;
    goto :goto_0

    .line 254
    :cond_4
    sget-object v7, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v7, v0}, Lcom/vkontakte/android/AudioPlayerService;->enqueue(Lcom/vkontakte/android/AudioFile;)Z

    move-result v3

    .line 255
    .local v3, "res":Z
    if-eqz v3, :cond_1

    .line 256
    iget-object v7, p0, Lcom/vkontakte/android/fragments/AudioListFragment$3;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-virtual {v7}, Lcom/vkontakte/android/fragments/AudioListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const v8, 0x7f0802f2

    invoke-static {v7, v8, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    move v5, v6

    .line 257
    goto :goto_1
.end method
