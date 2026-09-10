.class Lcom/vkontakte/android/fragments/AudioListFragment$19;
.super Ljava/lang/Object;
.source "AudioListFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/AudioGetRecommendations$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/AudioListFragment;->loadRecommendations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/AudioListFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/AudioListFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/AudioListFragment$19;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    .line 757
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x12c

    .line 772
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$19;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/AudioListFragment$19;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$30(Lcom/vkontakte/android/fragments/AudioListFragment;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$31(Lcom/vkontakte/android/fragments/AudioListFragment;Lcom/vkontakte/android/APIRequest;)V

    .line 773
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$19;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$27(Lcom/vkontakte/android/fragments/AudioListFragment;Lcom/vkontakte/android/APIRequest;)V

    .line 774
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$19;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/AudioListFragment;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    invoke-virtual {v0, p1, p2}, Lcom/vkontakte/android/ui/ErrorView;->setErrorInfo(ILjava/lang/String;)V

    .line 775
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$19;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/AudioListFragment;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    const/4 v1, 0x1

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 776
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$19;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/AudioListFragment;->progress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 777
    return-void
.end method

.method public success(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/AudioFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/AudioFile;>;"
    const/16 v3, 0x12c

    const/4 v2, 0x0

    .line 760
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$19;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$10(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 761
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$19;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$10(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 762
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$19;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$1(Lcom/vkontakte/android/fragments/AudioListFragment;)Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;->notifyDataSetChanged()V

    .line 763
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$19;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/AudioListFragment;->contentWrap:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1, v3}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 764
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$19;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/AudioListFragment;->progress:Landroid/widget/ProgressBar;

    invoke-static {v0, v2, v3}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 765
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$19;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$27(Lcom/vkontakte/android/fragments/AudioListFragment;Lcom/vkontakte/android/APIRequest;)V

    .line 766
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$19;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/AudioListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v0, v2, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 767
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$19;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$17(Lcom/vkontakte/android/fragments/AudioListFragment;I)V

    .line 768
    return-void
.end method
