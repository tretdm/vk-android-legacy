.class Lcom/vkontakte/android/fragments/AudioListFragment$16;
.super Ljava/lang/Object;
.source "AudioListFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/AudioGet$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/AudioListFragment;->loadData()V
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
    iput-object p1, p0, Lcom/vkontakte/android/fragments/AudioListFragment$16;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    .line 673
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

    .line 689
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$16;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/AudioListFragment$16;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$29(Lcom/vkontakte/android/fragments/AudioListFragment;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$30(Lcom/vkontakte/android/fragments/AudioListFragment;Lcom/vkontakte/android/APIRequest;)V

    .line 690
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$16;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$26(Lcom/vkontakte/android/fragments/AudioListFragment;Lcom/vkontakte/android/APIRequest;)V

    .line 691
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$16;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/AudioListFragment;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    invoke-virtual {v0, p1, p2}, Lcom/vkontakte/android/ui/ErrorView;->setErrorInfo(ILjava/lang/String;)V

    .line 692
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$16;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/AudioListFragment;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    const/4 v1, 0x1

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 693
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$16;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/AudioListFragment;->progress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 694
    return-void
.end method

.method public success(Ljava/util/ArrayList;)V
    .locals 3
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
    const/16 v2, 0x12c

    .line 676
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$16;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$26(Lcom/vkontakte/android/fragments/AudioListFragment;Lcom/vkontakte/android/APIRequest;)V

    .line 677
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$16;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$8(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 678
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$16;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$8(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 680
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$16;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/AudioListFragment;->contentWrap:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 681
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$16;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/AudioListFragment;->progress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 682
    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v0, :cond_0

    .line 683
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$16;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$5(Lcom/vkontakte/android/fragments/AudioListFragment;Lcom/vkontakte/android/AudioFile;)V

    .line 684
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$16;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/AudioListFragment$16;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$9(Lcom/vkontakte/android/fragments/AudioListFragment;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$10(Lcom/vkontakte/android/fragments/AudioListFragment;I)V

    .line 685
    :cond_1
    return-void
.end method
