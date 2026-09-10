.class Lcom/vkontakte/android/AudioListActivity$12;
.super Ljava/lang/Object;
.source "AudioListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioListActivity;->updateList(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/AudioListActivity;

.field private final synthetic val$updateSlidingPlayer:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioListActivity;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/AudioListActivity$12;->this$0:Lcom/vkontakte/android/AudioListActivity;

    iput-boolean p2, p0, Lcom/vkontakte/android/AudioListActivity$12;->val$updateSlidingPlayer:Z

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const v7, 0x7f06001e

    const/16 v6, 0x8

    const v5, 0x7f06001f

    const/4 v4, 0x0

    .line 359
    iget-boolean v2, p0, Lcom/vkontakte/android/AudioListActivity$12;->val$updateSlidingPlayer:Z

    if-eqz v2, :cond_0

    .line 360
    sget-object v2, Lcom/vkontakte/android/AudioListActivity;->lastInstance:Lcom/vkontakte/android/AudioListActivity;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v2}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 361
    iget-object v2, p0, Lcom/vkontakte/android/AudioListActivity$12;->this$0:Lcom/vkontakte/android/AudioListActivity;

    invoke-static {v2}, Lcom/vkontakte/android/AudioListActivity;->access$1(Lcom/vkontakte/android/AudioListActivity;)Lcom/vkontakte/android/ui/SlidingDrawer;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/vkontakte/android/ui/SlidingDrawer;->setVisibility(I)V

    .line 366
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/AudioListActivity$12;->this$0:Lcom/vkontakte/android/AudioListActivity;

    const v3, 0x102000a

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/AudioListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v2}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Landroid/widget/BaseAdapter;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 368
    iget-object v2, p0, Lcom/vkontakte/android/AudioListActivity$12;->this$0:Lcom/vkontakte/android/AudioListActivity;

    iget-object v2, v2, Lcom/vkontakte/android/AudioListActivity;->audios:[Lcom/vkontakte/android/AudioFile;

    array-length v2, v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/vkontakte/android/AudioListActivity$12;->this$0:Lcom/vkontakte/android/AudioListActivity;

    iget-object v2, v2, Lcom/vkontakte/android/AudioListActivity;->searchResults:[Lcom/vkontakte/android/AudioFile;

    array-length v2, v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/vkontakte/android/AudioListActivity$12;->this$0:Lcom/vkontakte/android/AudioListActivity;

    invoke-virtual {v2, v7}, Lcom/vkontakte/android/AudioListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_5

    .line 369
    const-string v1, ""

    .line 370
    .local v1, "txt":Ljava/lang/String;
    iget-object v2, p0, Lcom/vkontakte/android/AudioListActivity$12;->this$0:Lcom/vkontakte/android/AudioListActivity;

    invoke-static {v2}, Lcom/vkontakte/android/AudioListActivity;->access$11(Lcom/vkontakte/android/AudioListActivity;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 371
    iget-object v2, p0, Lcom/vkontakte/android/AudioListActivity$12;->this$0:Lcom/vkontakte/android/AudioListActivity;

    const v3, 0x7f060074

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/AudioListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, "sq":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/vkontakte/android/AudioListActivity$12;->this$0:Lcom/vkontakte/android/AudioListActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/AudioListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090081

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 380
    .end local v0    # "sq":Ljava/lang/String;
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/vkontakte/android/AudioListActivity$12;->this$0:Lcom/vkontakte/android/AudioListActivity;

    invoke-virtual {v2, v5}, Lcom/vkontakte/android/AudioListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 381
    iget-object v2, p0, Lcom/vkontakte/android/AudioListActivity$12;->this$0:Lcom/vkontakte/android/AudioListActivity;

    invoke-virtual {v2, v5}, Lcom/vkontakte/android/AudioListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    .end local v1    # "txt":Ljava/lang/String;
    :goto_2
    iget-object v2, p0, Lcom/vkontakte/android/AudioListActivity$12;->this$0:Lcom/vkontakte/android/AudioListActivity;

    invoke-virtual {v2, v5}, Lcom/vkontakte/android/AudioListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 387
    iget-object v2, p0, Lcom/vkontakte/android/AudioListActivity$12;->this$0:Lcom/vkontakte/android/AudioListActivity;

    invoke-virtual {v2, v7}, Lcom/vkontakte/android/AudioListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 388
    return-void

    .line 363
    :cond_2
    iget-object v2, p0, Lcom/vkontakte/android/AudioListActivity$12;->this$0:Lcom/vkontakte/android/AudioListActivity;

    invoke-static {v2}, Lcom/vkontakte/android/AudioListActivity;->access$1(Lcom/vkontakte/android/AudioListActivity;)Lcom/vkontakte/android/ui/SlidingDrawer;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/vkontakte/android/ui/SlidingDrawer;->setVisibility(I)V

    goto/16 :goto_0

    .line 373
    .restart local v0    # "sq":Ljava/lang/String;
    .restart local v1    # "txt":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/vkontakte/android/AudioListActivity$12;->this$0:Lcom/vkontakte/android/AudioListActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/AudioListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090083

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 374
    goto :goto_1

    .line 375
    .end local v0    # "sq":Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/vkontakte/android/AudioListActivity$12;->this$0:Lcom/vkontakte/android/AudioListActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/AudioListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090082

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 377
    iget-object v2, p0, Lcom/vkontakte/android/AudioListActivity$12;->this$0:Lcom/vkontakte/android/AudioListActivity;

    iget v2, v2, Lcom/vkontakte/android/AudioListActivity;->currentPlaylistID:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_1

    const-string v2, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 378
    iget-object v2, p0, Lcom/vkontakte/android/AudioListActivity$12;->this$0:Lcom/vkontakte/android/AudioListActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/AudioListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0901b5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 383
    .end local v1    # "txt":Ljava/lang/String;
    :cond_5
    iget-object v2, p0, Lcom/vkontakte/android/AudioListActivity$12;->this$0:Lcom/vkontakte/android/AudioListActivity;

    invoke-virtual {v2, v5}, Lcom/vkontakte/android/AudioListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 384
    iget-object v2, p0, Lcom/vkontakte/android/AudioListActivity$12;->this$0:Lcom/vkontakte/android/AudioListActivity;

    iget-object v2, v2, Lcom/vkontakte/android/AudioListActivity;->playlistBtn:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method
